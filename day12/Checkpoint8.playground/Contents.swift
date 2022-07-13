import Cocoa

protocol Building {
    var roomsNumber: Int { get }
    var cost: Int { get set }
    var agentName: String { get set }
    func salesSummary() -> String
}

struct House: Building {
    var roomsNumber: Int
    
    var cost: Int
    
    var agentName: String
    
    func salesSummary() -> String {
        "Summary for the house: number of rooms: \(roomsNumber), price: \(cost), agent name: \(agentName)"
    }
}

struct Office: Building {
    var roomsNumber: Int
    
    var cost: Int
    
    var agentName: String
    
    func salesSummary() -> String {
        "Summary for the office building: number of rooms: \(roomsNumber), price: \(cost), agent name: \(agentName)"
    }
}

var buildings: [Building] =
[
    Office(roomsNumber: 20, cost: 2000000, agentName: "sorina"),
    House(roomsNumber: 3, cost: 120000, agentName: "ana")
]

for build in buildings {
    print(build.salesSummary())
}





