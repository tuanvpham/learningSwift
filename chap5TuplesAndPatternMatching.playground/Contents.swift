//: Playground - noun: a place where people can play

import UIKit

// Tuple: a finite grouping of two or more values logically related

var statusCode: Int = 418
var errorString: String = "The request failed with the error"

let error = (statusCode, errorString)       // A Tuple

// Access elements in the tuple
error.0
error.1

let error1 = (code: statusCode, error: errorString)
error1.code
error1.error


// Patter Matching
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)  //Tuple

switch errorCodes {

// Cases with pattern matching
case (404,404):
    print("No items found")
case(404, _):
    print("First item not found")
case(_, 404):
    print("Second item not found")
default:
    print("All items found")
}

