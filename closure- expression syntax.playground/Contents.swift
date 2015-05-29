//: Playground - noun: a place where people can play

import UIKit

//{ (parameters) -> return type
//
//}

let numbers = [1, 2, 3, 4, 5]
let doubleNumbers = numbers.map({ (i: Int) -> Int in return i * 2})
doubleNumbers

let tripleNumbers = numbers.map({ i in return i * 3})
tripleNumbers
//short hand syntax

let shortHandArgumentNames = numbers.map({ $0 * 3})
shortHandArgumentNames
//short hand argument names

let trailingClosures = numbers.map(){$0 * 3}
trailingClosures
//trailing closures