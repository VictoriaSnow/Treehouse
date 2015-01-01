// Playground - noun: a place where people can play

import UIKit

func isDivisible(#dividend: Int, #divisor: Int) -> Bool {
    if dividend % divisor == 0 {
        return true
    } else {
        return false
    }
}

//if let result = isDivisible(dividend: 9, divisor: 5) {
//    println("Divisble")
//} else {
//    println("Not Divisible")
//}




func isNotDivisible (#dividend: Int, #divisor: Int) -> Bool {
    if isDivisible(dividend: dividend, divisor: divisor) {
        return false
    } else {
        return true
    }
}

isNotDivisible(dividend: 10, divisor: 2)