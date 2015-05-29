//: Playground - noun: a place where people can play

import UIKit

func printString(string: String){
    println("Printed String: " + string)
}

let someFunction = printString

someFunction("Hello")

func displayString(printStringFunc: (String) -> Void){
 printStringFunc("I am a function inside another function")
}

displayString(printString)

let allNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func isEvenNumber(number: Int) -> Bool{
    return number % 2 == 0
}

let ifEven = isEvenNumber

let evenNumbers = allNumbers.filter(ifEven)

