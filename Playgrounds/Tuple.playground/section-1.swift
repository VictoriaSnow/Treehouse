// Playground - noun: a place where people can play

import UIKit

func searchNames (#name: String) -> (found: Bool, description: String) {
    let names = ["A", "B"]
    var found = (false, "\(name) is not found")
    for n in names {
        if n == name {
            found = (true, "\(name) is found")
        }
    }
    return found
    
}

let (found, description) = searchNames(name: "A")

let result = searchNames(name: "B")
result.found
result.description

func greeting(person: String) -> (greeting: String, language: String) {
    let language = "English"
    let greeting = "Hello \(person)"
    
    return (greeting, language)
}

greeting("A")