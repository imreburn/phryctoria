ulia> startmonitor(3, .1)
Process
julia> : Event: (owner: 1), (time: 1.0),  (isvir?: false), (type: LEFT), (PVC: [1.0, 0.9, 0.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 7.0),  (isvir?: false), (type: RIGHT), (PVC: [7.0, 6.9, 6.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 11.0),  (isvir?: false), (type: LEFT), (PVC: [11.0, 10.9, 10.9]), (ispos: true)
Process 1: Local process: Event: (owner: 1), (time: 13.0),  (isvir?: false), (type: RIGHT), (PVC: [13.0, 12.9, 12.9]), (ispos: true)
Process 2: Local process: Event: (owner: 2), (time: 2.5),  (isvir?: false), (type: LEFT), (PVC: [2.4, 2.5, 2.4]), (ispos: true)
Process 2: Local process: Event: (owner: 2), (time: 7.5),  (isvir?: false), (type: RIGHT), (PVC: [7.4, 7.5, 7.4]), (ispos: true)
Process 2: Local process: Event: (owner: 2), (time: 15.0),  (isvir?: false), (type: LEFT), (PVC: [14.9, 15.0, 14.9]), (ispos: true)
Process 2: Local process: Event: (owner: 2), (time: 17.0),  (isvir?: false), (type: RIGHT), (PVC: [16.9, 17.0, 16.9]), (ispos: true)
Process 3: Local process: Event: (owner: 3), (time: 1.8),  (isvir?: false), (type: LEFT), (PVC: [1.7, 1.7, 1.8]), (ispos: true)
Process 3: Local process: Event: (owner: 3), (time: 8.5),  (isvir?: false), (type: RIGHT), (PVC: [8.4, 8.4, 8.5]), (ispos: true)
Process 3: Local process: Event: (owner: 3), (time: 19.0),  (isvir?: false), (type: LEFT), (PVC: [18.9, 18.9, 19.0]), (ispos: true)
Process 3: Local process: Event: (owner: 3), (time: 21.0),  (isvir?: false), (type: RIGHT), (PVC: [20.9, 20.9, 21.0]), (ispos: true)
Process 1: Process: Token: (owner: 1), (target: (1, :after, -1)),  (cut: Any[1.0, nothing, nothing]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, nothing, nothing]), (isvir: Bool[1, 0, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, nothing, nothing]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, nothing, nothing]), (isvir: Bool[1, 0, 0]), (type: LEFT)
Process 2: Process: Token: (owner: 2), (target: (2, :after, -1)),  (cut: Any[nothing, 2.5, nothing]), (depend: [2.4, 2.5, 2.4]), (eval: Any[nothing, true, nothing]), (isvir: Bool[0, 1, 0]), (type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 2.4)),  (cut: Any[nothing, 2.5, nothing]), (depend: [2.4, 2.5, 2.4]), (eval: Any[nothing, true, nothing]), (isvir: Bool[0, 1, 0]), (type: LEFT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, nothing, nothing]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, nothing, nothing]), (isvir: Bool[1, 0, 0]), (type: LEFT)
Process 2: Receive, solver_events: [2.5, 7.5, 15.0, 17.0]
Process 2: Receive, index: 1
Process 2: Add virtual event at time: 0.9
Process 2: addvirtevent: Event: (owner: 2), (time: 0.9),  (isvir?: true), (type: LEFT), (PVC: [0.8, 0.9, 0.8]), (ispos: false)
Process 2: Process: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 0.9, nothing]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, nothing]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 2: Inconsistent cut, target process: 3
Process 2: Send: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[1.0, 0.9, nothing]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, nothing]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 3: Process: Token: (owner: 3), (target: (3, :after, -1)),  (cut: Any[nothing, nothing, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[nothing, nothing, true]), (isvir: Bool[0, 0, 1]), (type: LEFT)
Process 3: Inconsistent cut, target process: 1
Process 3: Send: Token: (owner: 3), (target: (1, :after, 1.7)),  (cut: Any[nothing, nothing, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[nothing, nothing, true]), (isvir: Bool[0, 0, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[1.0, 0.9, nothing]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, nothing]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 3: Receive, solver_events: [1.8, 8.5, 19.0, 21.0]
Process 3: Receive, index: 1
Process 3: Add virtual event at time: 0.9
Process 3: addvirtevent: Event: (owner: 3), (time: 0.9),  (isvir?: true), (type: LEFT), (PVC: [0.8, 0.8, 0.9]), (ispos: false)
Process 3: Process: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[1.0, 0.9, 0.9]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[1.0, 0.9, 0.9]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Not a satcut! forbid process: 2
Process 3: Send: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 0.9, 0.9]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 2.4)),  (cut: Any[nothing, 2.5, nothing]), (depend: [2.4, 2.5, 2.4]), (eval: Any[nothing, true, nothing]), (isvir: Bool[0, 1, 0]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 7.0, 11.0, 13.0]
Process 1: Receive, index: 2
Process 1: Add virtual event at time: 2.4
Process 1: addvirtevent: Event: (owner: 1), (time: 2.4),  (isvir?: true), (type: LEFT), (PVC: [2.4, 2.3, 2.3]), (ispos: true)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 2.4)),  (cut: Any[2.4, 2.5, nothing]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, nothing]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 3
Process 1: Send: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, nothing]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, nothing]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 1: Receive: Token: (owner: 3), (target: (1, :after, 1.7)),  (cut: Any[nothing, nothing, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[nothing, nothing, true]), (isvir: Bool[0, 0, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 2.4, 7.0, 11.0, 13.0]
Process 1: Receive, index: 2
Process 1: Add virtual event at time: 1.7
Process 1: addvirtevent: Event: (owner: 1), (time: 1.7),  (isvir?: true), (type: LEFT), (PVC: [1.7, 1.5999999999999999, 1.5999999999999999]), (ispos: true)
Process 1: Process: Token: (owner: 3), (target: (1, :after, 1.7)),  (cut: Any[1.7, nothing, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, nothing, true]), (isvir: Bool[1, 0, 1]), (type: LEFT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, nothing, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, nothing, true]), (isvir: Bool[1, 0, 1]), (type: LEFT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 0.9, 0.9]), (depend: [1.0, 0.9, 0.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive, solver_events: [0.9, 2.5, 7.5, 15.0, 17.0]
Process 2: Receive, index: 1
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.0, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, nothing, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, nothing, true]), (isvir: Bool[1, 0, 1]), (type: LEFT)
Process 2: Receive, solver_events: [0.9, 2.5, 7.5, 15.0, 17.0]
Process 2: Receive, index: 2
Process 2: Add virtual event at time: 1.7
Process 2: addvirtevent: Event: (owner: 2), (time: 1.7),  (isvir?: true), (type: LEFT), (PVC: [1.5999999999999999, 1.7, 1.5999999999999999]), (ispos: false)
Process 2: Process: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, 1.7, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Consistent cut
Process 2: Evaluate: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, 1.7, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, 1.7, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, 1.7, 1.8]), (depend: [1.7, 1.7, 1.8]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.5, 15.0, 17.0]
Process 2: Receive, index: 2
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 3), (target: (2, :after, 1.7)),  (cut: Any[1.7, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 3), (target: (1, :after, 1.7)),  (cut: Any[1.7, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, nothing]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, nothing]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 8.5, 19.0, 21.0]
Process 3: Receive, index: 3
Process 3: Add virtual event at time: 2.4
Process 3: addvirtevent: Event: (owner: 3), (time: 2.4),  (isvir?: true), (type: LEFT), (PVC: [2.3, 2.3, 2.4]), (ispos: true)
Process 3: Process: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Sat cut!
Process 3: Send: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.0, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 11.0, 13.0]
Process 1: Receive, index: 1
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.7, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Inconsistent cut, target process: 1
Process 1: Send: Token: (owner: 1), (target: (1, :after, 1.7)),  (cut: Any[1.7, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 3), (target: (1, :after, 1.7)),  (cut: Any[1.7, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 11.0, 13.0]
Process 1: Receive, index: 2
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 3), (target: (1, :after, 1.7)),  (cut: Any[2.4, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Inconsistent cut, target process: 3
Process 1: Send: Token: (owner: 3), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 1.7)),  (cut: Any[1.7, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 11.0, 13.0]
Process 1: Receive, index: 2
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 1.7)),  (cut: Any[2.4, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Inconsistent cut, target process: 3
Process 1: Send: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[2.4, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Found a satisfying cut! Token 2, cut [2.4, 2.5, 2.4]
Process 2: Send: Token: (owner: 2), (target: (2, :after, 2.5)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 2.5)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.5, 15.0, 17.0]
Process 2: Receive, index: 3
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 2.5)),  (cut: Any[2.4, 7.5, 2.4]), (depend: [7.4, 7.5, 7.4]), (eval: Any[true, true, true]), (isvir: Bool[0, 1, 0]), (type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 2.4)),  (cut: Any[2.4, 7.5, 2.4]), (depend: [7.4, 7.5, 7.4]), (eval: Any[true, true, true]), (isvir: Bool[0, 1, 0]), (type: RIGHT)
Process 3: Receive: Token: (owner: 3), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 8.5, 19.0, 21.0]
Process 3: Receive, index: 2
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 3), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 3), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Sat cut!
Process 3: Send: Token: (owner: 3), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[2.4, 2.5, 0.9]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 8.5, 19.0, 21.0]
Process 3: Receive, index: 1
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 1), (target: (3, :after, 0.9)),  (cut: Any[2.4, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Inconsistent cut, target process: 3
Process 3: Send: Token: (owner: 1), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 3), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Found a satisfying cut! Token 3, cut [2.4, 2.5, 2.4]
Process 3: Send: Token: (owner: 3), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 1.8]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 8.5, 19.0, 21.0]
Process 3: Receive, index: 2
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 1), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Sat cut!
Process 3: Send: Token: (owner: 1), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 3), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 8.5, 19.0, 21.0]
Process 3: Receive, index: 3
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 3), (target: (3, :after, 2.4)),  (cut: Any[2.4, 2.5, 8.5]), (depend: [8.4, 8.4, 8.5]), (eval: Any[true, true, true]), (isvir: Bool[0, 0, 1]), (type: RIGHT)
Process 3: Inconsistent cut, target process: 1
Process 3: Send: Token: (owner: 3), (target: (1, :after, 2.4)),  (cut: Any[2.4, 2.5, 8.5]), (depend: [8.4, 8.4, 8.5]), (eval: Any[true, true, true]), (isvir: Bool[0, 0, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 2.4)),  (cut: Any[2.4, 7.5, 2.4]), (depend: [7.4, 7.5, 7.4]), (eval: Any[true, true, true]), (isvir: Bool[0, 1, 0]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 11.0, 13.0]
Process 1: Receive, index: 3
Process 1: Add virtual event at time: 7.6
Process 1: addvirtevent: Event: (owner: 1), (time: 7.6),  (isvir?: true), (type: RIGHT), (PVC: [7.6, 7.5, 7.5]), (ispos: false)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 2.4)),  (cut: Any[7.6, 7.5, 2.4]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 0]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 3
Process 1: Send: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[7.6, 7.5, 2.4]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 0]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (3, :after, 1.8)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Found a satisfying cut! Token 1, cut [2.4, 2.5, 2.4]
Process 1: Send: Token: (owner: 1), (target: (1, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 1: Receive: Token: (owner: 3), (target: (1, :after, 2.4)),  (cut: Any[2.4, 2.5, 8.5]), (depend: [8.4, 8.4, 8.5]), (eval: Any[true, true, true]), (isvir: Bool[0, 0, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 11.0, 13.0]
Process 1: Receive, index: 3
Process 1: Add virtual event at time: 8.6
Process 1: addvirtevent: Event: (owner: 1), (time: 8.6),  (isvir?: true), (type: RIGHT), (PVC: [8.6, 8.5, 8.5]), (ispos: false)
Process 1: Process: Token: (owner: 3), (target: (1, :after, 2.4)),  (cut: Any[8.6, 2.5, 8.5]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 0, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 3), (target: (2, :after, 2.5)),  (cut: Any[8.6, 2.5, 8.5]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 0, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 2.4)),  (cut: Any[2.4, 2.5, 2.4]), (depend: [2.4, 2.5, 2.4]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 3
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 2.4)),  (cut: Any[7.0, 2.5, 2.4]), (depend: [7.0, 6.9, 6.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 0, 0]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 2.5)),  (cut: Any[7.0, 2.5, 2.4]), (depend: [7.0, 6.9, 6.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 0, 0]), (type: RIGHT)
Process 3: Receive: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[7.6, 7.5, 2.4]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 0]), (type: RIGHT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 8.5, 19.0, 21.0]
Process 3: Receive, index: 3
Process 3: Add virtual event at time: 7.6
Process 3: addvirtevent: Event: (owner: 3), (time: 7.6),  (isvir?: true), (type: RIGHT), (PVC: [7.5, 7.5, 7.6]), (ispos: true)
Process 3: Process: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 2), (target: (3, :after, 2.4)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Evaluate token: Not a satcut! forbid process: 1
Process 3: Send: Token: (owner: 2), (target: (1, :after, 7.6)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive: Token: (owner: 3), (target: (2, :after, 2.5)),  (cut: Any[8.6, 2.5, 8.5]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 0, 1]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.5, 15.0, 17.0]
Process 2: Receive, index: 3
Process 2: Add virtual event at time: 8.6
Process 2: addvirtevent: Event: (owner: 2), (time: 8.6),  (isvir?: true), (type: RIGHT), (PVC: [8.5, 8.6, 8.5]), (ispos: false)
Process 2: Process: Token: (owner: 3), (target: (2, :after, 2.5)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate: Token: (owner: 3), (target: (2, :after, 2.5)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Evaluate token: Not a satcut! forbid process: 1
Process 2: Send: Token: (owner: 3), (target: (1, :after, 8.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 2.5)),  (cut: Any[7.0, 2.5, 2.4]), (depend: [7.0, 6.9, 6.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 0, 0]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 3
Process 2: Add virtual event at time: 7.1
Process 2: addvirtevent: Event: (owner: 2), (time: 7.1),  (isvir?: true), (type: RIGHT), (PVC: [7.0, 7.1, 7.0]), (ispos: true)
Process 2: Process: Token: (owner: 1), (target: (2, :after, 2.5)),  (cut: Any[7.0, 7.1, 2.4]), (depend: [7.0, 7.1, 7.0]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 0]), (type: RIGHT)
Process 2: Inconsistent cut, target process: 3
Process 2: Send: Token: (owner: 1), (target: (3, :after, 2.4)),  (cut: Any[7.0, 7.1, 2.4]), (depend: [7.0, 7.1, 7.0]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 0]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 7.6)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 5
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 2), (target: (1, :after, 7.6)),  (cut: Any[8.6, 7.5, 7.6]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 2), (target: (2, :after, 7.5)),  (cut: Any[8.6, 7.5, 7.6]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 3), (target: (1, :after, 8.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 6
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 3), (target: (1, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 3), (target: (2, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 2.4)),  (cut: Any[7.0, 7.1, 2.4]), (depend: [7.0, 7.1, 7.0]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 0]), (type: RIGHT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.6, 8.5, 19.0, 21.0]
Process 3: Receive, index: 3
Process 3: Add virtual event at time: 7.1
Process 3: addvirtevent: Event: (owner: 3), (time: 7.1),  (isvir?: true), (type: RIGHT), (PVC: [7.0, 7.0, 7.1]), (ispos: true)
Process 3: Process: Token: (owner: 1), (target: (3, :after, 2.4)),  (cut: Any[7.0, 7.1, 7.1]), (depend: [7.0, 7.1, 7.1]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 2.4)),  (cut: Any[7.0, 7.1, 7.1]), (depend: [7.0, 7.1, 7.1]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Evaluate token: Sat cut!
Process 3: Send: Token: (owner: 1), (target: (3, :after, 2.4)),  (cut: Any[7.0, 7.1, 7.1]), (depend: [7.0, 7.1, 7.1]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 7.5)),  (cut: Any[8.6, 7.5, 7.6]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 5
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 7.5)),  (cut: Any[8.6, 8.6, 7.6]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Inconsistent cut, target process: 3
Process 2: Send: Token: (owner: 2), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 7.6]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive: Token: (owner: 3), (target: (2, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 6
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 3), (target: (2, :after, 8.6)),  (cut: Any[11.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 3), (target: (1, :after, 11.0)),  (cut: Any[11.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (3, :after, 2.4)),  (cut: Any[7.0, 7.1, 7.1]), (depend: [7.0, 7.1, 7.1]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Found a satisfying cut! Token 1, cut [7.0, 7.1, 7.1]
Process 1: Send: Token: (owner: 1), (target: (1, :after, 7.0)),  (cut: Any[7.0, 7.1, 7.1]), (depend: [7.0, 7.1, 7.1]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 1: Receive: Token: (owner: 3), (target: (1, :after, 11.0)),  (cut: Any[11.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 7
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 3), (target: (1, :after, 11.0)),  (cut: Any[13.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 1
Process 1: Send: Token: (owner: 3), (target: (1, :after, 13.0)),  (cut: Any[13.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 7.0)),  (cut: Any[7.0, 7.1, 7.1]), (depend: [7.0, 7.1, 7.1]), (eval: Any[true, true, true]), (isvir: [nothing, nothing, nothing]), (type: nothing)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 4
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 7.0)),  (cut: Any[7.6, 7.1, 7.1]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 7.1)),  (cut: Any[7.6, 7.1, 7.1]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 3), (target: (1, :after, 13.0)),  (cut: Any[13.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive: Token: (owner: 2), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 7.6]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.1, 7.6, 8.5, 19.0, 21.0]
Process 3: Receive, index: 5
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 2), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 2), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Evaluate token: Not a satcut! forbid process: 1
Process 3: Send: Token: (owner: 2), (target: (1, :after, 8.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 7.1)),  (cut: Any[7.6, 7.1, 7.1]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 4
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 7.1)),  (cut: Any[7.6, 7.5, 7.1]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Inconsistent cut, target process: 3
Process 2: Send: Token: (owner: 1), (target: (3, :after, 7.1)),  (cut: Any[7.6, 7.5, 7.1]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 8.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 6
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 2), (target: (1, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 2), (target: (2, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 7.1)),  (cut: Any[7.6, 7.5, 7.1]), (depend: [7.6, 7.5, 7.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.1, 7.6, 8.5, 19.0, 21.0]
Process 3: Receive, index: 4
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 1), (target: (3, :after, 7.1)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 7.1)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Evaluate token: Not a satcut! forbid process: 1
Process 3: Send: Token: (owner: 1), (target: (1, :after, 7.6)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 6
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 8.6)),  (cut: Any[11.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[0, 1, 0]), (type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[11.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[0, 1, 0]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 7.6)),  (cut: Any[7.6, 7.5, 7.6]), (depend: [7.6, 7.5, 7.6]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 5
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 7.6)),  (cut: Any[8.6, 7.5, 7.6]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 7.5)),  (cut: Any[8.6, 7.5, 7.6]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[11.0, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, true]), (isvir: Bool[0, 1, 0]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0]
Process 1: Receive, index: 7
Process 1: Add virtual event at time: 14.9
Process 1: addvirtevent: Event: (owner: 1), (time: 14.9),  (isvir?: true), (type: LEFT), (PVC: [14.9, 14.8, 14.8]), (ispos: false)
Process 1: Process: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[14.9, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 3
Process 1: Send: Token: (owner: 2), (target: (3, :after, 8.5)),  (cut: Any[14.9, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 7.5)),  (cut: Any[8.6, 7.5, 7.6]), (depend: [8.6, 8.5, 8.5]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 5
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 7.5)),  (cut: Any[8.6, 8.6, 7.6]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 2: Inconsistent cut, target process: 3
Process 2: Send: Token: (owner: 1), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 7.6]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive: Token: (owner: 2), (target: (3, :after, 8.5)),  (cut: Any[14.9, 15.0, 8.5]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, true]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.1, 7.6, 8.5, 19.0, 21.0]
Process 3: Receive, index: 6
Process 3: Add virtual event at time: 14.9
Process 3: addvirtevent: Event: (owner: 3), (time: 14.9),  (isvir?: true), (type: LEFT), (PVC: [14.8, 14.8, 14.9]), (ispos: false)
Process 3: Process: Token: (owner: 2), (target: (3, :after, 8.5)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 2), (target: (3, :after, 8.5)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Not a satcut! forbid process: 1
Process 3: Send: Token: (owner: 2), (target: (1, :after, 14.9)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 7.6]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.1, 7.6, 8.5, 14.9, 19.0, 21.0]
Process 3: Receive, index: 5
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 1), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 7.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 3: Evaluate token: Not a satcut! forbid process: 1
Process 3: Send: Token: (owner: 1), (target: (1, :after, 8.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive: Token: (owner: 2), (target: (1, :after, 14.9)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 8.6)),  (cut: Any[8.6, 8.6, 8.5]), (depend: [8.6, 8.6, 8.5]), (eval: Any[false, false, true]), (isvir: Bool[1, 1, 1]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0, 14.9]
Process 1: Receive, index: 6
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 0, 0]), (type: LEFT)
Process 1: Inconsistent cut, target process: 2
Process 1: Send: Token: (owner: 1), (target: (2, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 0, 0]), (type: LEFT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 8.6)),  (cut: Any[11.0, 8.6, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 0, 0]), (type: LEFT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 15.0, 17.0]
Process 2: Receive, index: 6
Process 2: Add virtual event at time: 10.9
Process 2: addvirtevent: Event: (owner: 2), (time: 10.9),  (isvir?: true), (type: LEFT), (PVC: [10.8, 10.9, 10.8]), (ispos: false)
Process 2: Process: Token: (owner: 1), (target: (2, :after, 8.6)),  (cut: Any[11.0, 10.9, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 2: Inconsistent cut, target process: 3
Process 2: Send: Token: (owner: 1), (target: (3, :after, 8.5)),  (cut: Any[11.0, 10.9, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 8.5)),  (cut: Any[11.0, 10.9, 8.5]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, true]), (isvir: Bool[1, 1, 0]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.1, 7.6, 8.5, 14.9, 19.0, 21.0]
Process 3: Receive, index: 6
Process 3: Add virtual event at time: 10.9
Process 3: addvirtevent: Event: (owner: 3), (time: 10.9),  (isvir?: true), (type: LEFT), (PVC: [10.8, 10.8, 10.9]), (ispos: false)
Process 3: Process: Token: (owner: 1), (target: (3, :after, 8.5)),  (cut: Any[11.0, 10.9, 10.9]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 8.5)),  (cut: Any[11.0, 10.9, 10.9]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Not a satcut! forbid process: 2
Process 3: Send: Token: (owner: 1), (target: (2, :after, 10.9)),  (cut: Any[11.0, 10.9, 10.9]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 10.9)),  (cut: Any[11.0, 10.9, 10.9]), (depend: [11.0, 10.9, 10.9]), (eval: Any[true, false, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Receive, solver_events: [0.9, 1.7, 2.5, 7.1, 7.5, 8.6, 10.9, 15.0, 17.0]
Process 2: Receive, index: 7
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 10.9)),  (cut: Any[11.0, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[11.0, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[11.0, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0, 14.9]
Process 1: Receive, index: 7
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[13.0, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, false]), (isvir: Bool[1, 0, 0]), (type: RIGHT)
Process 1: Inconsistent cut, target process: 1
Process 1: Send: Token: (owner: 1), (target: (1, :after, 13.0)),  (cut: Any[13.0, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, false]), (isvir: Bool[1, 0, 0]), (type: RIGHT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 13.0)),  (cut: Any[13.0, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[true, true, false]), (isvir: Bool[1, 0, 0]), (type: RIGHT)
Process 1: Receive, solver_events: [1.0, 1.7, 2.4, 7.0, 7.6, 8.6, 11.0, 13.0, 14.9]
Process 1: Receive, index: 8
Process 1: Receive, route 1
Process 1: Process: Token: (owner: 1), (target: (1, :after, 13.0)),  (cut: Any[14.9, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Inconsistent cut, target process: 3
Process 1: Send: Token: (owner: 1), (target: (3, :after, 10.9)),  (cut: Any[14.9, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive: Token: (owner: 1), (target: (3, :after, 10.9)),  (cut: Any[14.9, 15.0, 10.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Receive, solver_events: [0.9, 1.8, 2.4, 7.1, 7.6, 8.5, 10.9, 14.9, 19.0, 21.0]
Process 3: Receive, index: 7
Process 3: Receive, route 1
Process 3: Process: Token: (owner: 1), (target: (3, :after, 10.9)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Consistent cut
Process 3: Evaluate: Token: (owner: 1), (target: (3, :after, 10.9)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 3: Evaluate token: Not a satcut! forbid process: 1
Process 3: Send: Token: (owner: 1), (target: (1, :after, 14.9)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
Process 1: Receive: Token: (owner: 1), (target: (1, :after, 14.9)),  (cut: Any[14.9, 15.0, 14.9]), (depend: [14.9, 15.0, 14.9]), (eval: Any[false, true, false]), (isvir: Bool[1, 1, 1]), (type: LEFT)
