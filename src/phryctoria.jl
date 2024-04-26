module phryctoria

using Match
using DataStructures
using CSV

export startmonitor, process, foundroot!

"""
    process(comm::Channel, i, n)

A process which receives signal data, and as it finds roots sends them to the abstractor.
"""
function process(comm::Channel, i, n, ϵ, pos_intervals) # Task
    filename = normpath("signals/signal" * string(i) * ".txt")
    data = []
    # While a signal exists
    for row ∈ CSV.Rows(filename; delim=',', types=Float64)
        # Assume piecewise linear for now
        t₂, x₂ = row.t, row.x
        push!(data, (t₂, x₂))
        if length(data) ≤ 1
            continue
        end
        (t₁, x₁) = data[end-1]
        # Go through signal until root
        if sign(x₁) ≠ sign(x₂)
            if x₁ < 0
                type = :LEFT
            end
            if x₂ < 0
                type = :RIGHT
            end
            loc = (t₁ * x₂ - t₂ * x₁) / (x₂ - x₁) # Root location considering a straight line between the two points
            id = string(i, "|", i, "|", loc)
            # Start with a default vector clock based on our current time
            V = fill(max(loc - ϵ, 0.), n)
            V[i] = loc
            root_event = Event(id, i, loc, true, V, false, type)
            # root = Root(id, i, types, loc, V)
            
            bound = 
            if root_event.type == :LEFT && root_event.type == :RIGHT
                :both
            elseif root_event.type == :LEFT
                :starting
            elseif root_event.type == :RIGHT
                :ending
            else
                :neither
            end
            printEvent(root_event, i, "Local process")
            # println("Process ", i, ": pos_intervals(before): ", pos_intervals)    
            updateintervals!(pos_intervals, bound, root_event.t)
            # println("Process ", i, ": pos_intervals(after): ", pos_intervals)    
            put!(comm, Comm(:newevent, root_event, pos_intervals))
        end
    end
end

"""
    combine(e₁, e₂)

Combine two events occurring on the same process at the same time to just one event.
"""
# function combine(e₁, e₂)
#     println("combine")
#     @match (e₁, e₂) begin
#         (Root(id₁, pid, types, t, V₁), Event(_, pid, t, _, V₂)) ||
#             (Event(_, pid, t, _, V₂), Root(id₁, pid, types, t, V₁)) => Root(id₁, pid, types, t, max.(V₁, V₂))
#         (Event(id₁, pid, t, is_pos, V₁), Event(_, pid, t, is_pos, V₂)) => Event(id₁, pid, t, is_pos, max.(V₁, V₂))
#         _ => error("Huh? How'd we end up with ", repr(e₁), " and ", repr(e₂), "?")
#     end
# end

"""
    updateProceventsV!(log, n)

Update vector clocks in the log.
"""
function updateProceventsV!(procevents, n)
    # Create a new vector clock of all zeros
    V = zeros(n)
    for e ∈ procevents
        e.V = max.(e.V, V)
        V = copy(e.V)
    end
end

"""
    updateProcevents!(log, event)

Add an event to the log, cleaning up duplicates.
"""
function updateProcevents!(procevents, new_event, i)
    # println("Process ", i, ": updateProcevents: ", map(x -> x.t, procevents))
    # printEvent(new_event, i, "updateProcevents")
    # printEvent(new_event, i, "updateProc")
    for e ∈ procevents
        if e.t == new_event.t
            # when the duplicate is found
            @match (e.isvir, new_event.isvir) begin
                (_, true) || (false, _) => begin
                    println("duplicate: not replaced")
                    return e
                end
                (_, false) => begin
                    # virtual event is replaced by local event
                    println("duplicate: replace!")
                    tmp = replace(procevents, e=>new_event)
                    procevents = tmp
                    updateProceventsV!(procevents, length(event.V))
                    return new_event
                end
            end
        end
    end
    # println("no duplicate found")
    eventᵢ = searchsortedfirst(map(x -> x.t, procevents), new_event.t)
    insert!(procevents, eventᵢ, new_event)
    updateProceventsV!(procevents, length(new_event.V))
    new_event
end

"""
    recentevent(log)

Get the most recent event from the log.
"""
# function recentevent(log)
#     # We need this function because PriorityQueue doesn't allow for retrieving the last element.
#     # If we need more efficiency, consider using a SortedMultiDict (of DataStructures.jl) instead
#     # of a PriorityQueue.
#     # Hacky way to get the last element of the log
#     last_event = nothing
#     for e ∈ keys(log)
#         last_event = e
#     end
#     last_event
# end

"""
    foundroot!(comms, log, root)

Called whenever a root on the signal is found

trigger found a root:
"""
function foundroot!(comms, procevents, new_event, i)
    # Keep the root's vector clock consistent with the process's previous events
    begin
        for e ∈ procevents
            if e.t > new_event.t
                break
            end
            new_event.V = max.(new_event.V, e.V)
        end
    end
    # if root is right root:
    # if rightroot ∈ root.types
    #     # for each process j ≠ i:
    #     for (j, comm) ∈ enumerate(comms)
    #         if j ≠ root.process
    #             # send root info to process j
    #             put!(comm, Comm(:remoteroot, root, nothing))
    #         end
    #     end
    # end
    # add root info to log
    # printEvent(new_event, 0)
    updateProcevents!(procevents, new_event, i)

    # NOTE maybe we need to fix it later
    # Return type is used for determining positive intervals
    # bound = if event.type == :LEFT && event.type == :RIGHT
    #     :both
    # elseif event.type == :LEFT
    #     :starting
    # elseif event.type == :RIGHT
    #     :ending
    # else
    #     :neither
    # end
    # (bound, new_event.t)
end

"""
    locked(log)

Returns the index immediately before the last element of the log that we're sure won't move.

Assuming vector clocks are only set to show the → relation created by the abstractor. Before
sending to the solver, the abstractor must be sure to update vector clocks so the max
difference between any two elements is ϵ.
"""
# function locked(log)
#     # Vector clocks are currently set as they came in
#     last_elem = recentevent(log).V

#     # Go until there's partial overlap of the vector clocks
#     for (j, e) ∈ enumerate(keys(log))
#         # If all elements of e vector clock are less than those of last event in log
#         if !all(isless.(e.V, last_elem))
#             return j - 1
#         end
#     end
# end

"""
    ispos(intervals, t)

TBW
"""
function ispos(intervals, t)
    for (a, b) ∈ intervals
        if ((isnothing(a) && t ≤ b)
            || (isnothing(b) && t ≥ a)
            || a ≤ t ≤ b)
            return true
        end
    end
    false
end

"""
    flushlog!(solver_comm, pos_intervals, log, flush_num)

TBW
"""
# function flushlog!(solver_comm, pos_intervals, log, flush_num, ϵ, i)
#     for _ = 1:flush_num
#         # cut events from log and send to solver
#         event = dequeue!(log)

#         # Update vector clock to be consistent with ϵ
#         event.V = max.(event.t - ϵ, event.V)

#         println("Process ", i, ": Sending event ", repr(event.V), " to solver")
#         put!(solver_comm, Comm(:newevent, event, pos_intervals))
#     end
# end

"""
    remoteroot!(solver_comm, pos_intervals, i, log, root, ϵ)

Called whenever receiving a communication about a remote right root

comms: Communication channels for all abstractor processes
solver: Communication channel for solver on the same process
pos_intervals: Positive intervals of the process
i: Process index
log: Log of the process
root: The received root

trigger received communiqué about right root from process j:
"""
# function remoteroot!(solver_comm, pos_intervals, i, log, root, ϵ)
#     # create new event e at time root.t + ϵ where root → e
#     new_t = root.t + ϵ
#     new_id = string(i, "|", root.process, "|", new_t)
#     is_pos = ispos(pos_intervals, new_t)
#     new_V = copy(root.V)
#     new_V[i] = new_t
#     # NOTE change root.process -> i
#     new_event = Event(new_id, i, new_t, is_pos, new_V) # Event(id, process, t, ispos, V)
#     # add e info to log
#     updateProcevents!(log, new_event)
#     # if there are any log events whose positions are locked in:
#     flush_count = locked(log)
#     flushlog!(solver_comm, pos_intervals, log, flush_count, ϵ, i)
# end

"""
    updateintervals!(intervals, bound, t)

TBW
"""
function updateintervals!(intervals, bound, t)
    if isempty(intervals)
        if bound == :starting
            push!(intervals, (t, nothing))
        else
            push!(intervals, (nothing, t))
        end
        return
    end

    @match (bound, intervals[end]) begin
        (:starting, (_, b)), if !isnothing(b) end => push!(intervals, (t, nothing))
        (:ending, (a, nothing))                   => begin intervals[end] = (a, t) end
        (:both,     (_, b)), if !isnothing(b) end => push!(intervals, (t, t))
        (:neither, _)                             => nothing
        _ => error("Don't know how we got in this situation: (", bound, ", ", intervals[end], ")")
    end
end

"""
    abstractor!(comms, solver_comm, log, i, ϵ)

An abstractor which takes root data and discretizes it for the solver.
"""
# function abstractor!(comms, solver_comm, log, i, ϵ) # Task
#     pos_intervals = []
#     while true
#         data = take!(comms[i])
#         @match data begin
#             Comm(:foundroot, root, _) => begin
#                 (bound, t) = foundroot!(comms, log, root)
#                 # Keep track of positive intervals for SAT of new events
#                 updateintervals!(pos_intervals, bound, t)
#             end
#             Comm(:remoteroot, root, _) => remoteroot!(solver_comm, pos_intervals, i, log, root, ϵ)
#         end
#     end
# end

"""
    cutcheck(falseprop, cut)

Checks the provided cut for existence of a conjunctive property.

    `falseprop` is a function which takes an index and event in the cut.
    If it returns true, the property is false (failed on that event).
"""
function cutcheck(falseprop, cut)
    for (i, event) ∈ enumerate(cut)
        if isnothing(event) || falseprop(i, event)
            return (false, i)
        end
    end
    true
end

function getcut(cut)
    cutV = []
    for (_, event) ∈ enumerate(cut)
        if isnothing(event)
            push!(cutV, nothing)
        else
            push!(cutV, event.t)
        end
    end
    cutV
end

function getcut2(cut)
    cutpos = []
    for (_, event) ∈ enumerate(cut)
        if isnothing(event) || !(event isa Event)
            push!(cutpos, nothing)
        elseif event isa Event
            push!(cutpos, event.ispos)
        end
    end
    cutpos    
end

function printEvent(event, i, fname)
    # println("Process ", i, ": ", fname, ": Token: (owner: ", token.process, "), (target: ",token.target, "),  (cut: ", getcut(token.cut), "), (depend: ", token.depend, "), (eval: ", getcut2(token.cut), ")")
    println("Process ", i, ": ", fname, ": Event: (owner: ", event.process, ", time: ",event.t, ", isvir?: ", event.isvir, ", type: ", event.type, ", PVC: ", event.V, ", ispos: ", event.ispos, ")")
end

function printtoken(token, i, fname)
    println("Process ", i, ": ", fname, ": Token: (owner: ", token.process, ", target: ",token.target, ", cut: ", getcut(token.cut), ", depend: ", token.depend, ", eval: ", getcut2(token.cut), ", isvir: ", token.isvir, ", type: ", token.type, ")")
end




"""
    isconsistentcut(cut, depend)

A cut is consistent iff ∀i: cut[i] ≥ depend[i].

If consistent, returns true. If inconsistent, returns a tuple of false and a process index which makes it inconsistent.
"""
isconsistentcut(cut, depend) = cutcheck((i, e) -> depend[i] > e.t, cut)

"""
    issatcut(cut)

If the cut satisfies the conjunctive predicate.

If satisfies, returns true. If doesn't satisfy, returns a tuple of false and a forbidden process index.
"""
issatcut(cut) = cutcheck((_, e) -> e isa Event && !e.ispos, cut)

"""
    addeventtotoken!(token, e)

TBW
"""
function addeventtotoken!(token, ev, i)
    if token.process == ev.process 
        token.isvir = ev.isvir
        token.type = ev.type
    end
    # if ev.isvir == false
    #     token.isvir[token.process] = true
    # end
    printEvent(ev, i, "Add Event to Token")
    printtoken(token, i, "Add Event to Token")
    token.cut[ev.process] = ev
    token.depend = max.(token.depend, ev.V)
end

"""
    sendtoken!(comm, waiting_tokens, token, predeval, i)

TBW
"""
function sendtoken!(comm, waiting_tokens, token, predeval, i)
    printtoken(token, i, "Send")
    println()
    token_position = findfirst(x -> x.process == token.process, waiting_tokens)
    deleteat!(waiting_tokens, token_position)
    put!(comm, Comm(:token, token, predeval))
end

"""
    evaluatetoken!(comms, waiting_tokens, token, i)

TBW
"""
function evaluatetoken!(comms, waiting_tokens, token, i)
    # printtoken(token, i, "Evaluate")
    @match issatcut(token.cut) begin
        true => begin
            println("Process ", i, ": Evaluate token: Sat cut!")
            sendtoken!(comms[token.process], waiting_tokens, token, true, i) # Found a satisfying cut! Send the token home
        end
        (false, forbidprocess) => begin # Not a satisfying cut
            println("Process ", i, ": Evaluate token: Not a satcut! forbid process: ", forbidprocess)
            token.target = (forbidprocess, :after, token.cut[forbidprocess].t)
            sendtoken!(comms[forbidprocess], waiting_tokens, token, false, i)
        end
        _ => error("issatcut() API not what we're expecting!")
    end
end

"""
    processtoken!(comms, waiting_tokens, token, i)

TBW
"""
function processtoken!(comms, waiting_tokens, token, i)
    printtoken(token, i, "Process")
    @match isconsistentcut(token.cut, token.depend) begin
        true => begin
            println("Process ", i, ": Consistent cut")
            evaluatetoken!(comms, waiting_tokens, token, i) # We have a consistent cut
        end 
        (false, newprocess) => begin
            # Not a consistent cut
            println("Process ", i, ": Inconsistent cut, target process: ", newprocess)
            # NOTE: Optimization?
            token.target = (newprocess, :after, token.depend[newprocess])
            # token.target = if isnothing(token.cut[newprocess])
            #     (newprocess, :after, token.depend[newprocess])
            # else
            #     (newprocess, :after, token.cut[newprocess].t)
            # end
            sendtoken!(comms[newprocess], waiting_tokens, token, false, i)
        end
        _ => error("isconsistentcut() API not what we're expecting!")
    end
end

"""
    receiveevent!(events, comms, pos_intervals, waiting_tokens, e, ϵ)

TBW
Only local events will be received by receiveevent!
"""
function receiveevent!(procevents, comms, pos_intervals, waiting_tokens, e, ϵ, i)
    # println("Process ", i, ": Received event")
    # save e in events
    # updateProcevents!(procevents, e, i)
    # Should be up to date, just might need to create a virtual event
    printEvent(e, i, "Receive Event")
    for token ∈ copy(waiting_tokens)
        if token.target[1] == e.process
            for ev ∈ procevents
                if token.target[3] < ev.t
                    addeventtotoken!(token, ev, i)
                    processtoken!(comms, waiting_tokens, token, i)
                end
            end     
        end
        # @match token.target begin
        #     (e.process, :after, t), if t < e.t end => begin # Process the event for the token
        #         addeventtotoken!(token, e, i)
        #         processtoken!(comms, waiting_tokens, token, i)
        #     end
        #     # (e.process, :at, t), if t < e.t end => begin # Time for a virtual event
        #     #     n = length(token.cut)
        #     #     event = addvirtevent!(procevents, pos_intervals, n, e.process, t, ϵ)
        #     #     addeventtotoken!(token, event)
        #     #     processtoken!(comms, waiting_tokens, token, i)
        #     # end
        #     # (e.process, :at, _) => continue # Don't do anything, our target hasn't shown up yet
        #     # _ => error("Something in the token's target isn't looking right: ", token.target)
        # end
    end
end

"""
    addvirtevent!(procevents, pos_intervals, i, t, ϵ)

TBW
"""
function addvirtevent!(procevents, pos_intervals, n, i, vir_t, ϵ, type)    
    # if type == :LEFT
    #     vir_t -= ϵ
    # elseif type == :RIGHT
    #     vir_t += ϵ
    # end
    is_pos = ispos(pos_intervals, vir_t)
    if is_pos == false
        return nothing
    end
    println("Process ", i, ": Add virtual event at time: ", vir_t)
    new_id = string(i, "|", i, "|", vir_t)
    new_V = fill(max(vir_t - ϵ, 0.), n)
    new_V[i] = vir_t
    new_event = Event(new_id, i, vir_t, is_pos, new_V, true, type)
    
    ret_event = updateProcevents!(procevents, new_event, i)
    # eventᵢ = searchsortedfirst(map(x -> x.t, procevents), vir_t)
    # insert!(procevents, eventᵢ, new_event)
    printEvent(ret_event, i, "addvirtevent")
    ret_event
end

"""
    receivetoken!(events, comms, pos_intervals, waiting_tokens, token, i, ϵ, predtrue)

TBW
"""
function receivetoken!(procevents, comms, pos_intervals, waiting_tokens, token, i, ϵ, predtrue)
    printtoken(token, i, "Receive")
    push!(waiting_tokens, token)
    if predtrue && token.process == i
        sat_cut = max.(map(c -> c.V, token.cut)...)
        println("Process ", i, ": Found a satisfying cut! Token ", repr(token.process), ", cut ", repr(sat_cut))
        token.target = (i, :after, token.cut[i].t)
        token.isvir = nothing
        # token.isvir = [nothing for _ = 1:(length(token.cut))]
        token.type = nothing
        sendtoken!(comms[i], waiting_tokens, token, false, i)
        return
    end

    # index = searchsortedfirst(map(x -> x.t, procevents), token.target[3])
    # if index >= length(procevents)
    #     return
    # end
        # if token.target[2] === :at
        #     # We're up to date, now we just need to wait for a new event
        #     return
        # else # Target is :after
        #     # There's an event which we've seen but didn't add to events
        #     error("Why didn't this event get added to events? ", token.target[3])
        # end


    println("Process ", i, ": Receive: solver_events: ", map(x -> x.t, procevents))
    if i == token.target[1]
        need_vir = false
        vir_time = token.cut[token.process].t
        if token.isvir == false && i != token.process
            need_vir = true
            # check if we need to add virtual event
            if token.type == :LEFT
                vir_time -= ϵ
            elseif token.type == :RIGHT 
                vir_time += ϵ
            end
            
            for e ∈ procevents
                if e.t == vir_time  
                    need_vir = false
                    break
                end
            end
        end

        println("Process ", i, ": need to create vir event? ", need_vir)    
        if need_vir
            vir_event = addvirtevent!(procevents, pos_intervals, length(token.cut), i, vir_time, ϵ, token.type)
            if !isnothing(vir_event)
                addeventtotoken!(token, vir_event, i)
                processtoken!(comms, waiting_tokens, token, i)
                return
            else
                println("Process ", i, ": virtual event false. Skip!")    
            end
        end
        
        for ev ∈ procevents
            if token.target[3] < ev.t
                addeventtotoken!(token, ev, i)
                processtoken!(comms, waiting_tokens, token, i)
                return
            end
        end
    end

    # if i == token.target[1]
    #     if token.isvir[i] == false
    #         # create virtual event
    #         token.isvir[i] = true
    #         vir_time = token.cut[token.process].t
    #         vir_event = addvirtevent!(procevents, pos_intervals, length(token.cut), i, vir_time, ϵ, token.type)
    #         addeventtotoken!(token, vir_event)
    #         processtoken!(comms, waiting_tokens, token, i)
    #     else
    #         # println("Process ", i, ": Receive, route 1")
    #         addeventtotoken!(token, procevents[index + 1])
    #         processtoken!(comms, waiting_tokens, token, i)
    #     end
    # end
end
    # @match token.target begin # Careful, the order of these arms matter
    #     (i, :after, procevents[end].t) => return # We're up to date, now we just need to wait for a new event
    #     (i, :after, procevents[index].t) => begin # Found the event at events[index + 1], process it
    #         println("Process ", i, ": Receive, route 1")
    #         addeventtotoken!(token, procevents[index + 1])
    #         processtoken!(comms, waiting_tokens, token, i)
    #     end
    #     # (i, :after, _) || (i, :at, procevents[index].t) => begin # Found the event at events[index], process it
    #     #     println("Process ", i, ": Receive, route 2")
    #     #     addeventtotoken!(token, procevents[index])
    #     #     processtoken!(comms, waiting_tokens, token, i)
    #     # end
    #     # (i, :at, t) => begin # Didn't find it, need to create a virtual event
    #     #     n = length(token.cut)
    #     #     event = addvirtevent!(procevents, pos_intervals, n, i, t, ϵ)
    #     #     addeventtotoken!(token, event)
    #     #     processtoken!(comms, waiting_tokens, token, i)
    #     # end
    #     _ => error("Something in the token's target isn't looking right: ", token.target)

"""
    solver(comms, i, n, ϵ)

TBW
"""
function solver(comms, i, n, ϵ) # Task
    # Init token
    token = Token(i, [nothing for _ = 1:n], [0. for _ = 1:n], (i, :after, -1), [nothing for _ = 1:n], nothing)
    procevents = []
    waiting_tokens = [token]
    pos_intervals_solver = []
    while true
        data = take!(comms[i])
        @match data begin
            Comm(:newevent, e, pos_intervals) => begin
                foundroot!(comms, procevents, e, i)
                # Keep track of positive intervals for SAT of new events
                pos_intervals_solver = pos_intervals
                # Need to stay up to date with positive intervals in case we need to build any virtual events
                receiveevent!(procevents, comms, pos_intervals_solver, waiting_tokens, e, ϵ, i)
            end
            Comm(:token, token, predtrue) => begin
                # printtoken(token, i, "Received token")
                receivetoken!(procevents, comms, pos_intervals_solver, waiting_tokens, token, i, ϵ, predtrue)
            end
        end
    end
end

mutable struct Event
    id
    process
    t
    ispos
    V # Physical Vector Clock
    isvir
    type
end

# mutable struct Root
#     id
#     process
#     types
#     t
#     V
# end

# @enum EventType begin
#     LEFT
#     RIGHT
#     V_LEFT
#     V_RIGHT
# end

# @enum RootType begin
#     leftroot
#     rightroot
# end

struct Comm
    type::Symbol
    data
    info
end

mutable struct Token
    process # owner
    cut::Vector{Union{Event,Nothing}}
    depend
    target # (process, :after, t)
    isvir
    type
end

"""
    startmonitor(n, ϵ)

TBW
"""
function startmonitor(n, ϵ)
    # Comms for the abstractor
    # commsₐ = [Channel{Comm}(Inf) for _ = 1:n]
    # logs = [PriorityQueue() for _ = 1:n]

    # Comms for the solver
    commsₛ = [Channel{Comm}(Inf) for _ = 1:n]
    pos_intervals = [[] for _ = 1:n]

    for i in 1:n
        errormonitor(@async process(commsₛ[i], i, n, ϵ, pos_intervals[i]))
        # errormonitor(@async abstractor!(commsₐ, commsₛ[i], logs[i], i, ϵ))
        # FIXME commₛ[i]
        errormonitor(@async solver(commsₛ, i, n, ϵ))
    end

    # Every agent async:
    #     get signal
    #     if signal root: send to abstractor
    #     Abstractor:
    #         check for root, comm from other agent
end

end # module
