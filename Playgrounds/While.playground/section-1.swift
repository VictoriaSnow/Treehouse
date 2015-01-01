// Playground - noun: a place where people can play

import UIKit

var todo: [String] = ["Return calls", "Write blog", "Cook dinner", "Pickup laundry", "Buy bulbs"]

var index = 0
while index < todo.count {
    println(todo[index])
    index++
}

index = 0
do {
    println(todo[index])
    index++
} while index < todo.count

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
index = 0
while index < numbers.count {
    println(numbers[index])
    index++
}