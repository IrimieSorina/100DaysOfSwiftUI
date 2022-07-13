import Cocoa

struct Car {
    let model: String
    let nrOfSeats: Int
    private var currentGear: Int
    
    init(model: String, nrOfSeats: Int, currentGear: Int) {
        self.model = model
        self.nrOfSeats = nrOfSeats
        self.currentGear = currentGear
    }
    
    mutating func gearUp(upWith: Int) -> Int {
        currentGear + upWith
//        return currentGear
    }
    
    mutating func gearDown(downWith: Int) -> Int {
        currentGear -= downWith
        return currentGear
    }
}

var car = Car(model: "seat", nrOfSeats: 5, currentGear: 2)

print(car.gearDown(downWith: 3))

print(car.gearUp(upWith: 1))

