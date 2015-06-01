import UIKit

class Item {
    var title: String = ""
    var price: Double = 0.0
    
    
}

let item = Item()

item.title
item.price
item.title = "item"

//but anyone can modify data

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

let product = Product(title: "something", price: 1.99)
product.price
product.discountedPrice(15)
product.price

enum Size {
    case Small, Medium, Large
    init(){
        self = .Small
    }
}

class Clothing: Product {
    var size = Size()
    let colour: String
    
    init(title: String, price: Double, colour: String){
        self.colour = colour
        super.init(title: title, price: price)
    }
    
    convenience init(title: String) {
        self.init(title: title, price: 10.00, colour: "red")
    }
    
    override func discountedPrice(_ percentage: Double = 10.0) {
        super.discountedPrice(percentage)
    }
//    override method
}

var tshirt = Clothing(title: "tshirt", price: 19.99, colour: "blue")
tshirt.title
tshirt.discountedPrice()
tshirt.price
tshirt.size
tshirt.colour

var redTshirt = Clothing(title: "tshirt")

redTshirt.price
redTshirt.discountedPrice(10)
redTshirt.price

