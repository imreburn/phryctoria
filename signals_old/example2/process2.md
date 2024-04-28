Process 2: Local process: Event: (owner: 2, time: 2.0, isvir?: false, type: LEFT, PVC: [1.9, 2.0], ispos: true)
Process 2: Local process: Event: (owner: 2, time: 6.0, isvir?: false, type: RIGHT, PVC: [5.9, 6.0], ispos: true)
Process 2: Local process: Event: (owner: 2, time: 9.0, isvir?: false, type: LEFT, PVC: [8.9, 9.0], ispos: true)
Process 2: Local process: Event: (owner: 2, time: 12.0, isvir?: false, type: RIGHT, PVC: [11.9, 12.0], ispos: true)
Process 2: Local process: Event: (owner: 2, time: 16.0, isvir?: false, type: LEFT, PVC: [15.9, 16.0], ispos: true)
Process 2: Local process: Event: (owner: 2, time: 20.0, isvir?: false, type: RIGHT, PVC: [19.9, 20.0], ispos: true)
Process 2: Add Event to Token: Event: (owner: 2, time: 2.0, isvir?: false, type: LEFT, PVC: [1.9, 2.0], ispos: true)
Process 2: Process: Token: (owner: 2, target: (2, :after, -1), cut: Any[nothing, 2.0], depend: [1.9, 2.0], eval: Any[nothing, true], isvir: false, type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2, target: (1, :after, 1.9), cut: Any[nothing, 2.0], depend: [1.9, 2.0], eval: Any[nothing, true], isvir: false, type: LEFT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 0.9), cut: Any[1.0, nothing], depend: [1.0, 0.9], eval: Any[true, nothing], isvir: false, type: LEFT)
Process 2: Receive: solver_events: [2.0, 6.0, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? true
Process 2: Add virtual event at time: 0.9
Process 2: addvirtevent: Event: (owner: 2, time: 0.9, isvir?: true, type: LEFT, PVC: [0.8, 0.9], ispos: false)
Process 2: Add Event to Token: Event: (owner: 2, time: 0.9, isvir?: true, type: LEFT, PVC: [0.8, 0.9], ispos: false)
Process 2: Process: Token: (owner: 1, target: (2, :after, 0.9), cut: Any[1.0, 0.9], depend: [1.0, 0.9], eval: Any[true, false], isvir: false, type: LEFT)
Process 2: Consistent cut
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 1, target: (2, :after, 0.9), cut: Any[1.0, 0.9], depend: [1.0, 0.9], eval: Any[true, false], isvir: false, type: LEFT)

Process 2: Receive: Token: (owner: 1, target: (2, :after, 0.9), cut: Any[1.0, 0.9], depend: [1.0, 0.9], eval: Any[true, false], isvir: false, type: LEFT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 2.0, isvir?: false, type: LEFT, PVC: [1.9, 2.0], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 0.9), cut: Any[1.0, 2.0], depend: [1.9, 2.0], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1, target: (1, :after, 1.0), cut: Any[1.0, 2.0], depend: [1.9, 2.0], eval: Any[true, true], isvir: false, type: LEFT)

Process 2: Receive: Token: (owner: 2, target: (1, :after, 1.9), cut: Any[1.9, 2.0], depend: [1.9, 2.0], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Found a satisfying cut! Token 2, cut [1.9, 2.0]
Process 2: Send: Token: (owner: 2, target: (2, :after, 2.0), cut: Any[1.9, 2.0], depend: [1.9, 2.0], eval: Any[true, true], isvir: nothing, type: nothing)

Process 2: Receive: Token: (owner: 2, target: (2, :after, 2.0), cut: Any[1.9, 2.0], depend: [1.9, 2.0], eval: Any[true, true], isvir: nothing, type: nothing)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 6.0, isvir?: false, type: RIGHT, PVC: [5.9, 6.0], ispos: true)
Process 2: Process: Token: (owner: 2, target: (2, :after, 2.0), cut: Any[1.9, 6.0], depend: [5.9, 6.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2, target: (1, :after, 1.9), cut: Any[1.9, 6.0], depend: [5.9, 6.0], eval: Any[true, true], isvir: false, type: RIGHT)

Process 2: Receive: Token: (owner: 2, target: (1, :after, 1.9), cut: Any[6.1, 6.0], depend: [6.1, 6.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Found a satisfying cut! Token 2, cut [6.1, 6.0]
Process 2: Send: Token: (owner: 2, target: (2, :after, 6.0), cut: Any[6.1, 6.0], depend: [6.1, 6.0], eval: Any[true, true], isvir: nothing, type: nothing)

Process 2: Receive: Token: (owner: 1, target: (2, :after, 2.0), cut: Any[6.1, 2.0], depend: [6.1, 6.0], eval: Any[true, true], isvir: true, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 6.0, isvir?: false, type: RIGHT, PVC: [5.9, 6.0], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 2.0), cut: Any[6.1, 6.0], depend: [6.1, 6.0], eval: Any[true, true], isvir: true, type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate token: Sat cut!
Process 2: Send: Token: (owner: 1, target: (2, :after, 2.0), cut: Any[6.1, 6.0], depend: [6.1, 6.0], eval: Any[true, true], isvir: true, type: RIGHT)

Process 2: Receive: Token: (owner: 2, target: (2, :after, 6.0), cut: Any[6.1, 6.0], depend: [6.1, 6.0], eval: Any[true, true], isvir: nothing, type: nothing)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 9.0, isvir?: false, type: LEFT, PVC: [8.9, 9.0], ispos: true)
Process 2: Process: Token: (owner: 2, target: (2, :after, 6.0), cut: Any[6.1, 9.0], depend: [8.9, 9.0], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2, target: (1, :after, 6.1), cut: Any[6.1, 9.0], depend: [8.9, 9.0], eval: Any[true, true], isvir: false, type: LEFT)

Process 2: Receive: Token: (owner: 1, target: (2, :after, 6.0), cut: Any[7.0, 6.0], depend: [7.0, 6.9], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? true
Process 2: Add virtual event at time: 7.1
Process 2: addvirtevent: Event: (owner: 2, time: 7.1, isvir?: true, type: RIGHT, PVC: [7.0, 7.1], ispos: false)
Process 2: Add Event to Token: Event: (owner: 2, time: 7.1, isvir?: true, type: RIGHT, PVC: [7.0, 7.1], ispos: false)
Process 2: Process: Token: (owner: 1, target: (2, :after, 6.0), cut: Any[7.0, 7.1], depend: [7.0, 7.1], eval: Any[true, false], isvir: false, type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 1, target: (2, :after, 7.1), cut: Any[7.0, 7.1], depend: [7.0, 7.1], eval: Any[true, false], isvir: false, type: RIGHT)

Process 2: Receive: Token: (owner: 2, target: (2, :after, 9.0), cut: Any[11.0, 9.0], depend: [11.0, 10.9], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 12.0, isvir?: false, type: RIGHT, PVC: [11.9, 12.0], ispos: true)
Process 2: Process: Token: (owner: 2, target: (2, :after, 9.0), cut: Any[11.0, 12.0], depend: [11.9, 12.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2, target: (1, :after, 11.0), cut: Any[11.0, 12.0], depend: [11.9, 12.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 7.1), cut: Any[7.0, 7.1], depend: [7.0, 7.1], eval: Any[true, false], isvir: false, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 9.0, isvir?: false, type: LEFT, PVC: [8.9, 9.0], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 7.1), cut: Any[7.0, 9.0], depend: [8.9, 9.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1, target: (1, :after, 7.0), cut: Any[7.0, 9.0], depend: [8.9, 9.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: Token: (owner: 2, target: (1, :after, 11.0), cut: Any[12.1, 12.0], depend: [12.1, 12.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Found a satisfying cut! Token 2, cut [12.1, 12.0]
Process 2: Send: Token: (owner: 2, target: (2, :after, 12.0), cut: Any[12.1, 12.0], depend: [12.1, 12.0], eval: Any[true, true], isvir: nothing, type: nothing)
Process 2: Receive: Token: (owner: 2, target: (2, :after, 12.0), cut: Any[12.1, 12.0], depend: [12.1, 12.0], eval: Any[true, true], isvir: nothing, type: nothing)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 16.0, isvir?: false, type: LEFT, PVC: [15.9, 16.0], ispos: true)
Process 2: Process: Token: (owner: 2, target: (2, :after, 12.0), cut: Any[12.1, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2, target: (1, :after, 12.1), cut: Any[12.1, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 9.0), cut: Any[11.0, 9.0], depend: [11.0, 10.9], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 12.0, 16.0, 20.0]
Process 2: need to create vir event? true
Process 2: Add virtual event at time: 10.9
Process 2: addvirtevent: Event: (owner: 2, time: 10.9, isvir?: true, type: LEFT, PVC: [10.8, 10.9], ispos: true)
Process 2: Add Event to Token: Event: (owner: 2, time: 10.9, isvir?: true, type: LEFT, PVC: [10.8, 10.9], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 9.0), cut: Any[11.0, 10.9], depend: [11.0, 10.9], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Consistent cut
Process 2: Evaluate token: Sat cut!
Process 2: Send: Token: (owner: 1, target: (2, :after, 9.0), cut: Any[11.0, 10.9], depend: [11.0, 10.9], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Receive: Token: (owner: 2, target: (1, :after, 12.1), cut: Any[15.9, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: false, type: LEFT)
Process 2: Found a satisfying cut! Token 2, cut [15.9, 16.0]
Process 2: Send: Token: (owner: 2, target: (2, :after, 16.0), cut: Any[15.9, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: nothing, type: nothing)
Process 2: Receive: Token: (owner: 2, target: (2, :after, 16.0), cut: Any[15.9, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: nothing, type: nothing)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 10.9, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 20.0, isvir?: false, type: RIGHT, PVC: [19.9, 20.0], ispos: true)
Process 2: Process: Token: (owner: 2, target: (2, :after, 16.0), cut: Any[15.9, 20.0], depend: [19.9, 20.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 2, target: (1, :after, 15.9), cut: Any[15.9, 20.0], depend: [19.9, 20.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 10.9), cut: Any[12.1, 10.9], depend: [12.1, 12.0], eval: Any[true, true], isvir: true, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 10.9, 12.0, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 12.0, isvir?: false, type: RIGHT, PVC: [11.9, 12.0], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 10.9), cut: Any[12.1, 12.0], depend: [12.1, 12.0], eval: Any[true, true], isvir: true, type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate token: Sat cut!
Process 2: Send: Token: (owner: 1, target: (2, :after, 10.9), cut: Any[12.1, 12.0], depend: [12.1, 12.0], eval: Any[true, true], isvir: true, type: RIGHT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 12.0), cut: Any[13.0, 12.0], depend: [13.0, 12.9], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 10.9, 12.0, 16.0, 20.0]
Process 2: need to create vir event? true
Process 2: Add virtual event at time: 13.1
Process 2: addvirtevent: Event: (owner: 2, time: 13.1, isvir?: true, type: RIGHT, PVC: [13.0, 13.1], ispos: false)
Process 2: Add Event to Token: Event: (owner: 2, time: 13.1, isvir?: true, type: RIGHT, PVC: [13.0, 13.1], ispos: false)
Process 2: Process: Token: (owner: 1, target: (2, :after, 12.0), cut: Any[13.0, 13.1], depend: [13.0, 13.1], eval: Any[true, false], isvir: false, type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate token: Not a satcut! forbid process: 2
Process 2: Send: Token: (owner: 1, target: (2, :after, 13.1), cut: Any[13.0, 13.1], depend: [13.0, 13.1], eval: Any[true, false], isvir: false, type: RIGHT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 13.1), cut: Any[13.0, 13.1], depend: [13.0, 13.1], eval: Any[true, false], isvir: false, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 10.9, 12.0, 13.1, 16.0, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 16.0, isvir?: false, type: LEFT, PVC: [15.9, 16.0], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 13.1), cut: Any[13.0, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Inconsistent cut, target process: 1
Process 2: Send: Token: (owner: 1, target: (1, :after, 13.0), cut: Any[13.0, 16.0], depend: [15.9, 16.0], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 16.0), cut: Any[18.0, 16.0], depend: [18.0, 17.9], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 10.9, 12.0, 13.1, 16.0, 20.0]
Process 2: need to create vir event? true
Process 2: Add virtual event at time: 18.1
Process 2: addvirtevent: Event: (owner: 2, time: 18.1, isvir?: true, type: RIGHT, PVC: [18.0, 18.1], ispos: true)
Process 2: Add Event to Token: Event: (owner: 2, time: 18.1, isvir?: true, type: RIGHT, PVC: [18.0, 18.1], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 16.0), cut: Any[18.0, 18.1], depend: [18.0, 18.1], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate token: Sat cut!
Process 2: Send: Token: (owner: 1, target: (2, :after, 16.0), cut: Any[18.0, 18.1], depend: [18.0, 18.1], eval: Any[true, true], isvir: false, type: RIGHT)
Process 2: Receive: Token: (owner: 1, target: (2, :after, 18.1), cut: Any[20.1, 18.1], depend: [20.1, 20.0], eval: Any[false, true], isvir: true, type: RIGHT)
Process 2: Receive: solver_events: [0.9, 2.0, 6.0, 7.1, 9.0, 10.9, 12.0, 13.1, 16.0, 18.1, 20.0]
Process 2: need to create vir event? false
Process 2: Add Event to Token: Event: (owner: 2, time: 20.0, isvir?: false, type: RIGHT, PVC: [19.9, 20.0], ispos: true)
Process 2: Process: Token: (owner: 1, target: (2, :after, 18.1), cut: Any[20.1, 20.0], depend: [20.1, 20.0], eval: Any[false, true], isvir: true, type: RIGHT)
Process 2: Consistent cut
Process 2: Evaluate token: Not a satcut! forbid process: 1
Process 2: Send: Token: (owner: 1, target: (1, :after, 20.1), cut: Any[20.1, 20.0], depend: [20.1, 20.0], eval: Any[false, true], isvir: true, type: RIGHT)
