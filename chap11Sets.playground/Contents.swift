//: Playground - noun: a place where people can play

import UIKit

// Set: unordered collection with distinct instances (no repeated values) 
var groceryBag = Set<String>()                      // Declare a set    
var groceryBag1 = Set(["Apples", "Oranges", "Pineapple"])

for food in groceryBag {
    print(food)
}

// Union (Combining sets)
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag1.union(friendsGroceryBag)

// Intersect (Intersecting sets) - find the common elements of two sets
let roommateGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommateGroceryBag)

// Disjoint - if two sets contain any common elements - returns true or false
let yourSecondBag = Set(["Berries", "Yogurt"])
let roommateSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommateSecondBag)

