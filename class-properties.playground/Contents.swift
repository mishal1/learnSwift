//: Playground - noun: a place where people can play

import UIKit

class Product {
    let title: String
    var price: Double
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }
    //    designated initializer
    func discountedPrice(percentage: Double) {
        price = price - (price * percentage / 100)
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
        //        getter method
        set {
            length = sqrt(newValue)
            width = sqrt(newValue)
        }
//        setter method
    }
    //    computed property
    //    not stored properties
    
    init(title: String, price: Double, height: Double, width: Double, length: Double){
        self.height = height
        self.width = width
        self.length = length
        super.init(title: title, price: price)
    }
}

var table = Furniture(title: "table", price: 300, height: 5, width: 10, length: 5)
table.surfaceArea
table.surfaceArea = 100
table.surfaceArea
table.width
table.length

class Electronic: Product {
    var batteries: Bool?
//    give it an optional
}

let toy = Electronic(title: "car", price: 10)
toy.batteries
toy.batteries = true
toy.batteries

if let batteries = toy.batteries {
    if batteries {
        println("Batteries included")
    }
}

