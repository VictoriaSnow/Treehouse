// Playground - noun: a place where people can play

import UIKit

struct Contact {
    var firstName: String
    var lastName: String
    var type: String
    init(fName: String, lName: String) {
        self.firstName = fName
        self.lastName = lName
        self.type = "Friend"
    }
    func fullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}

//var person = Contact(firstName: "John", lastName: "Smith")
//person.firstName
//person.lastName

var person = Contact(fName: "John", lName: "Smith")
person.fullName()
person.firstName = "Tom"
person.lastName = "Young"
person.fullName()
