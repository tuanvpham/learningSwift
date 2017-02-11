//: Playground - noun: a place where people can play

import UIKit

// Dictionary: key-value pairs. Keys must be unique.
var movieRatings = ["Donnie Darko" : 4, "Chungking Express": 5, "Dark City": 4]

//Accessing and modifying dictionaries
print("I have rated \(movieRatings.count) movies.")     //Count how many instances in the dict
let darkoRating = movieRatings["Donnie Darko"]          //Read a value from the dict
movieRatings["Dark City"] = 5                           //Modify a value in dict

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")   //Update value in dict
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

movieRatings["The Cabinet of Dr. Caligari"] = 5         //Add value to dict
movieRatings.removeValue(forKey: "Dark City")           //Remove value from dict

for (key,value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}

let watchedMovies = Array(movieRatings.keys)            //Translate a dictionary to an array


