//: Playground - noun: a place where people can play

import UIKit

/*
key difference between a struct and class:
struct - value type
class - reference type
Value Type:
A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function
Eg.
- init
- double
- string
- array
- dictionary
- bool

Reference Type:
Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a refernece to the same existing instance is used instead.
*/

//reference type

class ProductClass {
    var title: String
    var price: Double
    
    init(title: String, price: Double){
        self.title = title
        self.price = price
    }
}

var phoneClass = ProductClass(title: "iPhone 6", price: 200)
var bigPhoneClass = phoneClass
bigPhoneClass.title
bigPhoneClass.title = "iPhone 6+"
phoneClass.title
phoneClass.title = "iPhone 6"
bigPhoneClass.title

//value type

struct ProductStruct {
    var title: String
    var price: Double
}

var phoneStruct = ProductStruct(title: "iPhone 6", price: 200)
var bigPhoneStruct = phoneStruct
//creating new struct and copying contents
//if one changes it does not change the content of the other
//independent from each other
bigPhoneStruct.title = "iPhone 6 +"
phoneStruct.title

//by default always go for value types
//memory management becomes easier when dealing with value types


/* 
advantages of valye types
- has only one owner
- no dependencies on other owners
- copying is cheap over time
- comparison is easy
*/

