//: Playground - noun: a place where people can play

import UIKit

// Function: set of code accomplish some specific task
func printGreeting() {                          //A Basic function
    print("Hello, playground")
}
printGreeting()

//Function parameters
func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to my playground")
}
printPersonalGreeting(name: "Tuan")

func division(num: Double, den: Double) {
    print("\(num) divided by \(den) equals \(num/den)")
}
division(num: 9.0, den: 3.0)

//Variadic parameters: takes zero or more input values for its argument
//Functions can have only one variadic param that must be in the final param in the list
func printPersonalGreeting1(names: String...) {
    for name in names {
        print("Hello \(name), welcome to my playground")
    }
}
printPersonalGreeting1(names: "Alex", "Chris","Drew","Pat")

//Default parameter values

