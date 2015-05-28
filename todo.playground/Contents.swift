//: Playground - noun: a place where people can play

import UIKit

enum Status {
    case doing, pending, completed
    
    init(){
        self = .pending
    }
    
}

struct Task {
    var description : String
    var status = Status()
    
    init(description: String){
        self.description = description
    }
}
var todo = Task(description: "sleep")

todo.status
