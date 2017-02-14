//: Playground - noun: a place where people can play

import UIKit

// Function: set of code accomplish some specific task
func printGreeting() {                          //A Basic function
    print("Hello, playground")
}
printGreeting()

/*********--------*********/
// Function parameters
func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to my playground")
}
printPersonalGreeting(name: "Tuan")

func division(num: Double, den: Double) {
    print("\(num) divided by \(den) equals \(num/den)")
}
division(num: 9.0, den: 3.0)

/**********--------*********/
// Variadic parameters: takes zero or more input values for its argument
// Functions can have only one variadic param that must be in the final param in the list
func printPersonalGreeting1(names: String...) {
    for name in names {
        print("Hello \(name), welcome to my playground")
    }
}
printPersonalGreeting1(names: "Alex", "Chris","Drew","Pat")

/**********--------**********/
// Default parameter values
// Add default parameter by giving the = sign with a default value
func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") {             //Default value with equal sign
    print("\(num) divided by \(den) equals \(num/den)\(punctuation)")
}
divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!")

/**********-------**********/
// In-out parameters: allows a function's impact on a variable to live beyond the function's body
// Cannot have default values, and varadic parameters
var error = "The request failed:"
func appendErrorCode(code: Int, toErrorString errorString: inout String) {          //inout parameter - toErrorString: external param - errorString: internal param
    if code == 400 {
        errorString += " bad request."                                              //internal param used within the function
    }
}
appendErrorCode(code: 400, toErrorString: &error)                                   //external param used when calling the function with and &(ampersand)
error

/*********----------**********/
// Returning from a function: functions give information after they finish executing the code inside of the scope
// Return value with -> syntax and a specific type
func divisionDescription1(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(num) divided by \(den) equals \(num/den)\(punctuation)"
}
print(divisionDescription1(forNumerator: 9.0, andDenominator: 3.0))

/************----------************/
// Nested functions and scope
func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangle(withBase: 3.0, andHeight: 5.0)

/*********------************/
// Multiple Returns
func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return(evens, odds)
}
let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortNumbers = sortEvenOdd(numbers: aBunchOfNumbers)
print("The even numbers are \(theSortNumbers.evens)")
print("The odd numbers are \(theSortNumbers.odds)")

/**********---------**************/
// Optional Return Types
func grabMiddleName(name: (String, String?, String)) -> String? {               //the function takes one argument: a tuple of type (String, String?, String)
    return name.1                                                               //return the name argument the first index which is String?
}
let middleName = grabMiddleName(name: ("Matt", nil, "Mathias"))
if let theName = middleName {
    print(theName)
}




