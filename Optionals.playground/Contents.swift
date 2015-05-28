//: Playground - noun: a place where people can play

import UIKit

func findApt(aptNumber : String) -> String? {
    //    ? - optional
    //    allows you to return a value or indicate the absence of a value by specifying nil.
    
    let aptNumbers = ["101", "202", "303"]
    for tempAptNumber in aptNumbers {
        if(tempAptNumber == aptNumber){
            return tempAptNumber
        }
    }
    return nil
}

func sendNoticeTo(#aptNumber : Int){
    println(aptNumber)
}

findApt("303")
findApt("1")

if let culprit = findApt("202")?.toInt() {
    //    optional chaining
    sendNoticeTo(aptNumber: culprit)
}

func isDivisibleBy(dividend: Int, divisor: Int)->Bool?{
    if dividend % divisor == 0 {
        return true
    }
    return nil
}

func printIfDivisible(dividend: Int, divisor: Int){
    
    if let isDivisible = isDivisibleBy(dividend, divisor){
        println("Divisible")
    } else {
        println("Not Divisble")
    }
    
}

printIfDivisible(4, 2)
printIfDivisible(1, 3)