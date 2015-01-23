// Playground - noun: a place where people can play

import UIKit

class Product {
    let title: String
    var price: Double
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }
    
    func discountedPrice(percentage: Double) -> Double {
        return price - (price * percentage / 100)
    }
}

//enum Size {
//    case Small, Medium, Large
//    init() {
//        self = .Small
//    }
//}

class Clothing: Product {
    enum Size {
        case Small, Medium, Large
        init() {
            self = .Small
        }
    }
    var size: Size = Size()
    
    let designer: String
    init(title: String, price: Double, designer: String) {
        self.designer = designer
        super.init(title: title, price: price)
    }
    convenience init(title: String) {
        self.init(title: title, price: 99, designer: "CK")
    }
    override func discountedPrice(_ percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage)
    }
    
}


class Furniture: Product {
    var height: Double
    var width: Double
    var length: Double
    var surfaceArea: Double {
        get {
            return length * width
        }
        set {
            length = sqrt(newValue)
            width = sqrt(newValue)
        }
    }
    
    init(title: String, price: Double,
        height: Double, width: Double, length: Double) {
            self.height = height
            self.width = width
            self.length = length
            super.init(title: title, price: price)
        
    }
}


let table = Furniture(title: "Coffee Table", price: 300, height: 5, width: 10, length: 20)
table.surfaceArea = 144
table.width
table.length
table.surfaceArea


var tshirt = Clothing(title: "Vintage")
println(tshirt.designer)

tshirt.title
tshirt.price
tshirt.discountedPrice()

let quadcopter = Product(title: "Quadcopter", price: 499.99)


class Electronic: Product {
    var batteries: Bool?
}

let toy = Electronic(title: "RC Car", price: 79)
toy.batteries = true
toy.batteries!
toy.batteries = false
if let batteries = toy.batteries {
    if batteries {
        println("Batteries")
    }
}


class ProductClass {
    var title: String
    var price: Double = 0.0
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }
}

var phoneClass = ProductClass(title: "iPhone 6", price: 600)
var bigPhoneClass = phoneClass
bigPhoneClass.title = "iPhone 6 Plus"
phoneClass.title
bigPhoneClass.price


struct ProductStruct {
    var title: String
    var price: Double = 0.0
}
var phoneStruct = ProductStruct(title: "Nexus", price: 500)
var bigPhoneStruct = phoneStruct
bigPhoneStruct.title
bigPhoneStruct.title = "iPhone 6 Plus"
phoneStruct.title


