/* class ClassName {
    var propertiesName
    func
 }
 */

import Foundation
class Monster {
    
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimePool) {
            town?.population = newVictimePool
        }
    }
    // Computed Type Property
    class var spookyNoise: String {
        return "Grrr"
    }
    // Stored Type Property
    static let isTerriffying = true
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) has not found a town to terrorize yet...")
        }
    }
}
