ulia> startmonitor(2, .1)
Process
julia> : Event: (owner: 1), (time: 1.0),  (isvir?: false), (type: LEFT), (PVC: [1.0, 0.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 7.0),  (isvir?: false), (type: RIGHT), (PVC: [7.0, 6.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 11.0),  (isvir?: false), (type: LEFT), (PVC: [11.0, 10.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 13.0),  (isvir?: false), (type: RIGHT), (PVC: [13.0, 12.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 15.0),  (isvir?: false), (type: LEFT), (PVC: [15.0, 14.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 18.0),  (isvir?: false), (type: RIGHT), (PVC: [18.0, 17.9]), (ispos: true)
Process 1: Process: Token: (owner: 1), (target: (1, :after, -1)),  (cut: Any[1.0, nothing]), (depend: [1.0, 0.9]), (eval: Any[true, nothing]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, nothing]), (depend: [1.0, 0.9]), (eval: Any[true, nothing]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[nothing, 2.0]), (depend: [1.9, 2.0]), (eval: Any[nothing, true]), (isvir: Bool[0, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 2
Process 1: Add virtual event at time: 1.9
Process 1: addvirtevent: Event: (owner: 1), (time: 1.9),  (isvir?: true), (type: LEFT), (PVC: [1.9, 1.7999999999999998]), (ispos: true)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Evaluate token: Sat cut!
Process 1: Send: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.0, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.9, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 1
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Evaluate token: Sat cut!
Process 1: Send: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Found a satisfying cut! Token 1, cut [1.9, 2.0]
Process 1: Send: Token: (owner: 1), (target: (1, :after, 1.9)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: [nothing, nothing]), (type: nothing)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 1.9)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, true]), (isvir: [nothing, nothing]), (type: nothing)
Process 1: Receive, solver_events: [1.0, 1.9, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 2
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 1.9)),  (cut: Any[7.0, 2.0]), (depend: [7.0, 6.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 2.0)),  (cut: Any[7.0, 2.0]), (depend: [7.0, 6.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[1.9, 6.0]), (depend: [5.9, 6.0]), (eval: Any[true, true]), (isvir: Bool[0, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 2
Process 1: Add virtual event at time: 6.1
Process 1: addvirtevent: Event: (owner: 1), (time: 6.1),  (isvir?: true), (type: RIGHT), (PVC: [6.1, 6.0]), (ispos: true)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Evaluate token: Sat cut!
Process 1: Send: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 7.0)),  (cut: Any[7.0, 9.0]), (depend: [8.9, 9.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 4
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 7.0)),  (cut: Any[11.0, 9.0]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 9.0)),  (cut: Any[11.0, 9.0]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (2, :after, 9.0)),  (cut: Any[11.0, 10.9]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Found a satisfying cut! Token 1, cut [11.0, 10.9]
Process 1: Send: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[11.0, 10.9]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: [nothing, nothing]), (type: nothing)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 6.1)),  (cut: Any[6.1, 7.1]), (depend: [7.0, 7.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 3
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 2), (target: (1, :after, 6.1)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 6.1)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Evaluate token: Not a satcut! forbid process: 2
Process 1: Send: Token: (owner: 2), (target: (2, :after, 7.1)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[11.0, 10.9]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: [nothing, nothing]), (type: nothing)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 5
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[13.0, 10.9]), (depend: [13.0, 12.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 10.9)),  (cut: Any[13.0, 10.9]), (depend: [13.0, 12.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 7.0)),  (cut: Any[7.0, 9.0]), (depend: [8.9, 9.0]), (eval: Any[true, true]), (isvir: Bool[0, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 4
Process 1: Add virtual event at time: 8.9
Process 1: addvirtevent: Event: (owner: 1), (time: 8.9),  (isvir?: true), (type: LEFT), (PVC: [8.9, 8.8]), (ispos: false)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 7.0)),  (cut: Any[8.9, 9.0]), (depend: [8.9, 9.0]), (eval: Any[false, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 7.0)),  (cut: Any[8.9, 9.0]), (depend: [8.9, 9.0]), (eval: Any[false, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Evaluate token: Not a satcut! forbid process: 1
Process 1: Send: Token: (owner: 2), (target: (1, :after, 8.9)),  (cut: Any[8.9, 9.0]), (depend: [8.9, 9.0]), (eval: Any[false, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 13.0)),  (cut: Any[13.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 7
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 13.0)),  (cut: Any[15.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 1
Process 1: Send: Token: (owner: 1), (target: (1, :after, 15.0)),  (cut: Any[15.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 8.9)),  (cut: Any[8.9, 9.0]), (depend: [8.9, 9.0]), (eval: Any[false, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 5
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 2), (target: (1, :after, 8.9)),  (cut: Any[11.0, 9.0]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 2), (target: (2, :after, 9.0)),  (cut: Any[11.0, 9.0]), (depend: [11.0, 10.9]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 15.0)),  (cut: Any[15.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 8
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 15.0)),  (cut: Any[18.0, 16.0]), (depend: [18.0, 17.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 16.0)),  (cut: Any[18.0, 16.0]), (depend: [18.0, 17.9]), (eval: Any[true, true]), (isvir: Bool[1, 0]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (2, :after, 16.0)),  (cut: Any[18.0, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Found a satisfying cut! Token 1, cut [18.0, 18.1]
Process 1: Send: Token: (owner: 1), (target: (1, :after, 18.0)),  (cut: Any[18.0, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: [nothing, nothing]), (type: nothing)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[11.0, 12.0]), (depend: [11.9, 12.0]), (eval: Any[true, true]), (isvir: Bool[0, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 13.0, 15.0, 18.0]
Process 1: Receive, index: 6
Process 1: Add virtual event at time: 12.1
Process 1: addvirtevent: Event: (owner: 1), (time: 12.1),  (isvir?: true), (type: RIGHT), (PVC: [12.1, 12.0]), (ispos: true)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[12.1, 12.0]), (depend: [12.1, 12.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[12.1, 12.0]), (depend: [12.1, 12.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Evaluate token: Sat cut!
Process 1: Send: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[12.1, 12.0]), (depend: [12.1, 12.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 18.0)),  (cut: Any[18.0, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: [nothing, nothing]), (type: nothing)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 12.1)),  (cut: Any[12.1, 13.1]), (depend: [13.0, 13.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 12.1, 13.0, 15.0, 18.0]
Process 1: Receive, index: 7
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 2), (target: (1, :after, 12.1)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 12.1)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Evaluate token: Not a satcut! forbid process: 2
Process 1: Send: Token: (owner: 2), (target: (2, :after, 13.1)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[true, false]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 13.0)),  (cut: Any[13.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[0, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 12.1, 13.0, 15.0, 18.0]
Process 1: Receive, index: 8
Process 1: Add virtual event at time: 15.9
Process 1: addvirtevent: Event: (owner: 1), (time: 15.9),  (isvir?: true), (type: LEFT), (PVC: [15.9, 15.8]), (ispos: true)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 13.0)),  (cut: Any[15.9, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 13.0)),  (cut: Any[15.9, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Evaluate token: Sat cut!
Process 1: Send: Token: (owner: 2), (target: (1, :after, 13.0)),  (cut: Any[15.9, 16.0]), (depend: [15.9, 16.0]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 15.9)),  (cut: Any[15.9, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.9, 6.1, 7.0, 8.9, 11.0, 12.1, 13.0, 15.0, 15.9, 18.0]
Process 1: Receive, index: 10
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 2), (target: (1, :after, 15.9)),  (cut: Any[18.0, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Consistent cut
Process 1: Evaluate: Token: (owner: 2), (target: (1, :after, 15.9)),  (cut: Any[18.0, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Evaluate token: Sat cut!
Process 1: Send: Token: (owner: 2), (target: (1, :after, 15.9)),  (cut: Any[18.0, 18.1]), (depend: [18.0, 18.1]), (eval: Any[true, true]), (isvir: Bool[1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 18.0)),  (cut: Any[18.0, 20.0]), (depend: [19.9, 20.0]), (eval: Any[true, true]), (isvir: Bool[0, 1]), (type: RIGHT)