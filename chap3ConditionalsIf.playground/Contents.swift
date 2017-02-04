//: Playground - noun: a place where people can play

import UIKit

var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

//If conditions
if population < 10000 {
    message = "\(population) is a small town"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town"
} else {
    message = "\(population) is pretty big"
}