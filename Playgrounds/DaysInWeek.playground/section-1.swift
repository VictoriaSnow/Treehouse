// Playground - noun: a place where people can play

import UIKit

enum Day: Int {
    case Mon = 1, Tue, Wed, Thu, Fri, Sat, Sun
    init() {
        self = .Mon
    }
    func daysTillWeekend() -> Int {
        return Day.Sat.rawValue - self.rawValue
    }
    func dayString() -> String {
        switch self {
        case .Mon:
            return "Monday"
        default:
            return "Other Day"
            
        }
    }
}

//func weekdayOrWeekend (dayOfWeek: Day) -> String {
//    switch dayOfWeek {
//        case .Mon, .Tue, .Wed, .Thu, .Fri:
//            return "Weekday"
//        case .Sat, .Sun:
//            return "Weekend"
//    
//        default:
//            return "Not a valid day"
//    }
//}
//var today = Day.Mon
//today = Day.Sun
//weekdayOrWeekend(Day.Sun)

//func daysTillWeekend(day: Day) -> Int {
//    return Day.Sat.rawValue - day.rawValue
//}

var today = Day()
today.rawValue
today.daysTillWeekend()
today = .Fri
today.daysTillWeekend()
var holiday = Day.Sat
holiday.daysTillWeekend()
today.dayString()


//if let firstDayOfWeek = Day(rawValue: 1) {
//    daysTillWeekend(firstDayOfWeek)
//}

enum Speed: Int {
    case Slow = 10
    case Medium = 50
    case Fast = 100
}

var turtleSpeed = Speed.Slow.rawValue

    
enum Status {
    case Success(String), Failure(String)
}

let downloadStatus = Status.Failure("Network connection unavailable")

switch downloadStatus {
case .Success(let success):
    println(success)
case .Failure(let failure):
    println(failure)
}


