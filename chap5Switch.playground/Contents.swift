//: Playground - noun: a place where people can play

import UIKit


//Switch
var statusCode: Int = 404
var errorString: String
switch statusCode {
case 400:
    errorString = "Bad Request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not Found"
default:
    errorString = "None"
}

// or 
var statusCode1: Int = 400
var errorString1: String = "The request failed with the error: "
 switch statusCode1 {
 case 400, 401, 403, 404:
    errorString1 += "There was something wrong with the request."
    fallthrough
 default:
    errorString1 += " Please review the request and try again."
 }
//fallthrough: even though the case matches, the switch does not stop. It proceeds to the default case.



//Switch with ranges
var statusCode2: Int = 204
switch statusCode2 {
case 100,101:
    errorString1 += " Informal, \(statusCode2)"
case 204:
    errorString1 += " Redirection but no content, 204"
case 300...307:
    errorString1 += " Redirection, \(statusCode2)"
case 400...417:
    errorString1 += " Client error, \(statusCode2)"
case 500...505:
    errorString1 += " Server error, \(statusCode2)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300 || unknownCode > 505):
    errorString1 = "\(statusCode2) is not a known erroe code. Please review the request and try again"
default:
    errorString1 = "Unexpected error encountered."
}
