//: Playground - noun: a place where people can play

import UIKit

func greeting(){
    var name = "Mishal"
    println("Hello \(name)")
}

greeting()

func calulateArea(height: Int, width:Int){
    let area = height * width
    println("The area is \(area)")
}

func returnCalulateArea(height: Int, width:Int) -> Int{
    return height * width
}

calulateArea(1, 2)

println("Area = \(returnCalulateArea(10, 20))")


func paramLabels(label value: String) -> String{
    return value
}

println(paramLabels(label: "Mishal"))


func modifiedCalArea(#height: Int, #width:Int) -> Int{
    return height * width
}
//labels for params

println(modifiedCalArea(height: 5, width: 10))
modifiedCalArea(height: 10, width: 10)

//tuples:
//used when you need to return multiple values
//ordered list that are fast and efficient to declare

func info(#name: String, #age: Int) -> (String, Int){
    return (name, age)
}

let result = info(name: "mishal", age: 22)

result.0
result.1

let(name, age) = info(name: "Mishal", age: 22)

name
age

let(_, myAge) = info(name: "Mishal", age: 22)

myAge

func newInfo(#name: String, #age: Int) -> (name: String, age: Int){
    return (name, age)
}

let results = newInfo(name: "Mishal", age: 22)

results.name
results.age
