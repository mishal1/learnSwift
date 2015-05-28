//: Playground - noun: a place where people can play

import UIKit

struct User {
    let firstName: String
    var age: Int = 22
}

var user = User(firstName: "Mishal", age: 22)
user.firstName

user.age
user.age = 22
user.age


struct Contact {
    var firstName: String
    var lastName: String
    var type: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
        self.type = "Friend"
    }
    
    func fullName() -> String{
        return "\(self.firstName) \(self.lastName)"
    }
}

var person = Contact(firstName: "John", lastName: "Smith")

person.type

person.fullName()

person.firstName = "Mishal"

person.lastName = "Islam"

person.fullName()


