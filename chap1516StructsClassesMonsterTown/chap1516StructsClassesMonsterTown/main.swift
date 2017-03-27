/* Struct: a type that groups a set of related data together (Town.swift)
    
   Class: model related data under a common type (Monster.swift - superclass, Zombie - subclass)
    Differ from structs: 
        Inheritance: a subclass inherits the properties and methods of its superclass
 
   Properties: model the characteristics of the entity that a type represent (classes, enums, structs have properties) (Town.swift)
    Stored properties: given default values 
        Mutation (variable): var population = 5524
        Inmutation (constant): let region = "South"
        Nested: Enum 
        Lazy loading 
 
    Computed properties: return result of some calculation - retrieve or set properties's value
        Getter: read data from a property
        Setter: write data to a property
    
    Property Observers: watch for and respond to changes in a given property (available only for stored property)
        willSet: property is about to change
        didSet: property did change
    
    Type properties: store information that will be the same across all instances
        Stored Type Property: given a default value
        Computed Type Property
        
*/
import Foundation

var myTown = Town()
let ts = myTown.townSize
print(ts)
myTown.changePopulation(amount: 500)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName(name: "Fred the Zombie", walksWithLimp: false)
print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool); population: \(fredTheZombie.town?.population)")
print(Zombie.spookyNoise)
if Zombie.isTerriffying {
    print("Run Away!!!!")
}


