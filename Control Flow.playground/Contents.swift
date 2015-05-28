//: Playground - noun: a place where people can play

import UIKit

var info = ["Mishal", "22"]

for item in info {
    println(item)
}

for number in 1...5 {
    println("\(number) times 2 is \(number * 2)")
}


for number in 1..<5 {
    println(number)
}

//for in loop

var index = 0

while index < info.count {
    println(info[index])
    index++
}

//while loop

index = 0

do {
    println(info[index])
    index++

} while index < info.count

//do loop

for var i = 0; i < info.count; i++ {
    println(info[i])
}

let cards = 1...13

for card in cards {
    if card == 11 {
        println("Jack")
    } else if card == 12 {
        println("Queen")
    } else if card == 13 {
        println("King")
    } else if card == 1 {
        println("Ace")
    } else {
        println(card)
    }
}

for card in cards {
    switch card {
    case 11:
        println("Jack")
    case 12:
        println("Queen")
    case 13:
        println("King")
    case 1:
        println("Ace")
    default:
        println(card)
    }
}

for card in cards {
    switch card {
    case 1, 11...13:
        println("Trump card")
    default:
        println(card)
    }
}

for number in 1...10 {
    if number % 15 == 0{
        println("FizzBuzz")
    } else if number % 5 == 0 {
        println("Buzz")
    } else if number % 3 == 0 {
        println("Fizz")
    } else {
        println(number)
    }
}


























