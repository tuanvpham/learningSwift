//: Playground - noun: a place where people can play

import UIKit

/* Closures: bundles of fucntionality accomplish specific tasks
 Closures: more compact and lightweight syntax
 Function is a special case of closures - a named closures
 
 Closure Syntax: 
    {(param) -> (return type) in
        //code
    }
*/

var volunteerCounts = [1,3,40,32,2,53,77,13]
let volunteerSorted = volunteerCounts.sorted(by: {
    (i: Int,j: Int) -> Bool in
    return i < j
})

let volunteerSorted1 = volunteerCounts.sorted(by: {i,j in i<j})
let volunteerSorted2 = volunteerCounts.sorted {$0 < $1}     //shorthand syntax for the closure - use $ sign


/* Functions as Return Types 
 Functions return other functions as their return type
 */

func makeTownGrand() -> (Int, Int) -> Int {                         // makeTownGrand() takes no argument and returns a function buildRoad()
    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {       // buildRoads() takes two int arguments
        return toLights + lightsToAdd
    }
    return buildRoads
}
var stopLights = 4
let townPlan = makeTownGrand()
stopLights = townPlan(4, stopLights)
print("Knowhere has  \(stopLights) stoplights")


/* Functions as Arguments 
 Functions serve as arguments to other functions
 */
func makeTownGrand1(budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {   // makeTownGrand takes tow arguments, "condition" argument is a closure
    if condition(budget) {                                              // ((Int, Int) -> (Int))? : handle the nil return
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {       // buildRoads() takes two int arguments
            return toLights + lightsToAdd
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}

var stopLights1 = 4
if let townPlan = makeTownGrand1(budget: 1000, condition: evaluateBudget) {
    stopLights1 = townPlan(4,stopLights1)
}
if let newTownPlan = makeTownGrand1(budget: 10500, condition: evaluateBudget) {
    stopLights = newTownPlan(4, stopLights)
}
print("Knowhere has \(stopLights1) stoplights")



/* Closures Capture Values
 Closures and functions can keep track of internal information encapsulated by a variable defined in their scope
 */
func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}
var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)
growBy500()                             //add 500 to the current pop
currentPopulation += growBy500()        //add 500 to the current pop


/* Closures as Reference Types
 Variables or constants are assigned to the functions would point to the functions
 The values will change - just a reference, not a actual copy
 */
let anotherGrowBy500 = growBy500
anotherGrowBy500() //