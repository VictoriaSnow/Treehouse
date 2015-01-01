// Playground - noun: a place where people can play

import UIKit

struct Task {
    var description: String
    var status = Status()
    init (describe: String) {
        self.description = describe
        
    }
}
enum Status {
    case Doing, Pending, Completed
    init () {
        self = .Pending
    }
}


var task = Task(describe: "Have fun")
task.status = .Completed

