Process 2: Root, Time:2.0 Root Type: Any[phryctoria.leftroot]
Process 2: Root, Time:6.0 Root Type: Any[phryctoria.rightroot]
Process 2: Root, Time:9.0 Root Type: Any[phryctoria.leftroot]
Process 2: Root, Time:12.0 Root Type: Any[phryctoria.rightroot]
Process 2: Root, Time:16.0 Root Type: Any[phryctoria.leftroot]
Process 2: Root, Time:20.0 Root Type: Any[phryctoria.rightroot]
Process 2: Sending event [1.9, 2.0] to solver
Process 2: Sending event [5.9, 6.0] to solver
Process 2: Sending event [7.0, 7.1] to solver
Process 2: Sending event [8.9, 9.0] to solver
Process 2: Sending event [11.9, 12.0] to solver
Process 2: Sending event [13.0, 13.1] to solver
Process 2: Sending event [15.9, 16.0] to solver
Process 2: Process: Token: (owner: 2), (target: (2, :after, -1)),  (cut: Any[nothing, 2.0]), (depend: [1.9, 2.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :at, 1.9)),  (cut: Any[nothing, 2.0]), (depend: [1.9, 2.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 1), (target: (2, :at, 0.9)),  (cut: Any[1.0, nothing]), (depend: [1.0, 0.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 1
Process 2: Add virtual event at time: 0.9
Process 2: Process: Token: (owner: 1), (target: (2, :at, 0.9)),  (cut: Any[1.0, 0.9]), (depend: [1.0, 0.9]), (eval: Any[nothing, false])
Process 2: Consistent cut
Process 2: Evaluate: Token: (owner: 1), (target: (2, :at, 0.9)),  (cut: Any[1.0, 0.9]), (depend: [1.0, 0.9]), (eval: Any[nothing, false])
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 0.9]), (depend: [1.0, 0.9]), (eval: Any[nothing, false])
Process 2: Receive: Token: (owner: 2), (target: (1, :at, 1.9)),  (cut: Any[1.9, 2.0]), (depend: [1.9, 2.0]), (eval: Any[true, nothing])
Process 2: Found a satisfying cut! Token 2, cut [1.9, 2.0]
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 2
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 2.0)),  (cut: Any[1.9, 6.0]), (depend: [5.9, 6.0]), (eval: Any[true, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[1.9, 6.0]), (depend: [5.9, 6.0]), (eval: Any[true, nothing])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 0.9]), (depend: [1.0, 0.9]), (eval: Any[nothing, false])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 1
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 0.9)),  (cut: Any[1.0, 2.0]), (depend: [1.9, 2.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1), (target: (1, :after, 1.0)),  (cut: Any[1.0, 2.0]), (depend: [1.9, 2.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 2), (target: (1, :after, 1.9)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, nothing])
Process 2: Found a satisfying cut! Token 2, cut [6.1, 6.0]
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 3
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 6.0)),  (cut: Any[6.1, 7.1]), (depend: [7.0, 7.1]), (eval: Any[true, false])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 6.1)),  (cut: Any[6.1, 7.1]), (depend: [7.0, 7.1]), (eval: Any[true, false])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 2.0)),  (cut: Any[6.1, 2.0]), (depend: [6.1, 6.0]), (eval: Any[true, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 2
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 2.0)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, nothing])
Process 2: Consistent cut
Process 2: Evaluate: Token: (owner: 1), (target: (2, :after, 2.0)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, nothing])
Process 2: Evaluate token: Sat cut!
Process 2: Send: Token: (owner: 1), (target: (2, :after, 2.0)),  (cut: Any[6.1, 6.0]), (depend: [6.1, 6.0]), (eval: Any[true, nothing])
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 7.1)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[nothing, false])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 4
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 7.1)),  (cut: Any[7.0, 9.0]), (depend: [8.9, 9.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 7.0)),  (cut: Any[7.0, 9.0]), (depend: [8.9, 9.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 6.0)),  (cut: Any[7.0, 6.0]), (depend: [7.0, 6.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 3
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 6.0)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[nothing, false])
Process 2: Consistent cut
Process 2: Evaluate: Token: (owner: 1), (target: (2, :after, 6.0)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[nothing, false])
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 1), (target: (2, :after, 7.1)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[nothing, false])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 7.1)),  (cut: Any[7.0, 7.1]), (depend: [7.0, 7.1]), (eval: Any[nothing, false])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 4
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 7.1)),  (cut: Any[7.0, 9.0]), (depend: [8.9, 9.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1), (target: (1, :after, 7.0)),  (cut: Any[7.0, 9.0]), (depend: [8.9, 9.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 9.0)),  (cut: Any[11.0, 9.0]), (depend: [11.0, 10.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 5
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 9.0)),  (cut: Any[11.0, 12.0]), (depend: [11.9, 12.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[11.0, 12.0]), (depend: [11.9, 12.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 9.0)),  (cut: Any[11.0, 9.0]), (depend: [11.0, 10.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 5
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 9.0)),  (cut: Any[11.0, 12.0]), (depend: [11.9, 12.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1), (target: (1, :after, 11.0)),  (cut: Any[11.0, 12.0]), (depend: [11.9, 12.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 2), (target: (1, :after, 11.0)),  (cut: Any[12.1, 12.0]), (depend: [12.1, 12.0]), (eval: Any[true, nothing])
Process 2: Found a satisfying cut! Token 2, cut [12.1, 12.0]
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 6
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 12.0)),  (cut: Any[12.1, 13.1]), (depend: [13.0, 13.1]), (eval: Any[true, false])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 12.1)),  (cut: Any[12.1, 13.1]), (depend: [13.0, 13.1]), (eval: Any[true, false])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 12.0)),  (cut: Any[13.0, 12.0]), (depend: [13.0, 12.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 6
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 12.0)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[nothing, false])
Process 2: Consistent cut
Process 2: Evaluate: Token: (owner: 1), (target: (2, :after, 12.0)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[nothing, false])
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 1), (target: (2, :after, 13.1)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[nothing, false])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 13.1)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[nothing, false])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 7
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 1), (target: (2, :after, 13.1)),  (cut: Any[13.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1), (target: (1, :after, 13.0)),  (cut: Any[13.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 13.1)),  (cut: Any[13.0, 13.1]), (depend: [13.0, 13.1]), (eval: Any[nothing, false])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 7
Process 2: Receive, route 1
Process 2: Process: Token: (owner: 2), (target: (2, :after, 13.1)),  (cut: Any[13.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[nothing, nothing])
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2), (target: (1, :after, 13.0)),  (cut: Any[13.0, 16.0]), (depend: [15.9, 16.0]), (eval: Any[nothing, nothing])
Process 2: Receive: Token: (owner: 1), (target: (2, :after, 16.0)),  (cut: Any[18.0, 16.0]), (depend: [18.0, 17.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 8
Process 2: Receive: Token: (owner: 2), (target: (2, :after, 16.0)),  (cut: Any[18.0, 16.0]), (depend: [18.0, 17.9]), (eval: Any[nothing, nothing])
Process 2: Receive, solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 13.1, 16.0]
Process 2: Receive, index: 8