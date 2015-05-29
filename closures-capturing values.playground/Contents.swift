//: Playground - noun: a place where people can play

import UIKit

func printerFunction()->()->(){
    var runningTotal = 0
    func printInteger(){
        runningTotal += 10
        println("Inner func: \(runningTotal)")
    }
    println("Outer func: \(runningTotal)")
    return printInteger
}

let printAndReturnIntegerFunc = printerFunction()

printAndReturnIntegerFunc()
printAndReturnIntegerFunc()

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    first arrow points to the whole return value
//    first brackets - the parameters passed in
//    second brackets- the return type inside the inner function
    var runningTotal = 20
    func incrementer() -> Int {
        runningTotal += amount
        println(runningTotal)
        return runningTotal
    }
    println(runningTotal)
    return incrementer
}

var incrementByThree = makeIncrementer(forIncrement: 3)
incrementByThree()
incrementByThree()
//keeps refrence to the value instead of declaring a new variable

incrementByThree = makeIncrementer(forIncrement: 5)
incrementByThree()
incrementByThree()
