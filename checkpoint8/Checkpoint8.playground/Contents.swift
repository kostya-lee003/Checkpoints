import UIKit

protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get }
    var agent: String { get set }
    func printSummary()
}

struct House: Building {
    var numberOfRooms: Int = 28
    var cost: Int = 230_000
    var agent: String = "Krasl"

    func printSummary() {
        print(cost)
    }
}

struct Office: Building {
    var numberOfRooms: Int = 12
    var cost: Int = 80_000
    var agent: String = "Sarah"
    
    func printSummary() {
        print(cost)
    }
}
