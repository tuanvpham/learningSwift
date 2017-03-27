//
//  main.swift
//  chap17Initialization
//
//  Created by Tuan Pham on 3/26/17.
//  Copyright © 2017 Tuan Pham. All rights reserved.
//

// Initialization: operation of setting up an instance of a type

// Struct Initialization: (Town class) - without inheritance
/*
 Empty Initializer (an initializer without params): myTown = Town() : empty initializer and set the new instance's properties to the default values in Town class
 
 Memberwise initializer: params for each stored property on the type
 */

// Class Initialization (Monster class)
/*
 Designated Initializer: an instance's properties all have values beofre initialization completes
    
    A subclass will inherit its superclass's designated initializers
 
 Convenience Initialzier: call across to another initializer on the same class
 
 Require Initializer: a superclass can require its subclasses to provide a specific initializer
 */

// Deinitializtion: removing instances of a class from memory when they are no longer needed (opposite of initialization)
import Foundation

var myTown = Town(population: 10000, stopLights: 6, region: "West")
var myTown1 = Town(population:10000, stopLights: 6)
myTown.printTownDescription()
let ts = myTown.townSize
print(ts)
myTown.changePopulation(amount: 500)
var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()
fredTheZombie?.changeName(name: "Fred the Zombie", walksWithLimp: false)
var convenientZombie = Zombie(limp: true, fallingApart: false)
print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool); population: \(fredTheZombie?.town?.population)")
print(Zombie.spookyNoise)
if Zombie.isTerriffying {
    print("Run Away!!!!")
}

// Deinitializtion
fredTheZombie = nil

