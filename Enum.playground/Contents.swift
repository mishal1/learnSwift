//: Playground - noun: a place where people can play

import UIKit

//enum Day {
//    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
//}

//enum Day: Int {
//    case Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7
//}

enum Day: Int {
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

func enumWeekdayOrWeekend(dayOfTheWeek : Day) -> String {
    switch dayOfTheWeek {
    case Day.Saturday, Day.Sunday:
        return "Yay it is the weekend"
    case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday:
        return "It's a weekday"
    default:
        return "Not a valid day"
    }
}

enumWeekdayOrWeekend(Day.Saturday)

var today = Day.Monday

enumWeekdayOrWeekend(today)

today = .Sunday

enumWeekdayOrWeekend(today)

func daysTillWeekend(day: Day) -> Int{
    return Day.Saturday.rawValue - day.rawValue
}

daysTillWeekend(Day.Tuesday)


let wrongDay = Day(rawValue: 10)
//returns an optional

if let firstDayOfWeek = Day(rawValue: 1){
    daysTillWeekend(firstDayOfWeek)
}

enum NewDay: Int {
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    
    init(){
        self = .Monday
    }
//    init method
    
    func newDaysTillWeekend() -> Int{
        return Day.Saturday.rawValue - self.rawValue
    }
    
    func dayString() -> String{
        switch self {
            case .Monday:
                return "Monday"
            default:
                return "Other day"
        }
    }
//    methods
}

var monday = NewDay()

monday.newDaysTillWeekend()

monday.dayString()

enum Status {
    case Success(String)
    case Failure(String)
}

let downloadStatus = Status.Failure("Network connection unavailable")

switch downloadStatus {
case .Success(let success):
    println(success)
case .Failure(let failure):
    println(failure)
}

//associated values















