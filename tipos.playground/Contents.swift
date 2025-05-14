import UIKit

class Car {
    var carName: String
    var engine: String
    var numberOfWeels: Int
    var numberOfPassengers: Int
    var heightOfWeel: Int?
    
    init(carName: String, engine: String, numberOfWeels: Int, numberOfPassengers: Int, heightOfWeel: Int? = nil) {
        self.carName = carName
        self.engine = engine
        self.numberOfWeels = numberOfWeels
        self.numberOfPassengers = numberOfPassengers
        self.heightOfWeel = heightOfWeel
    }
    
    public func getNumberOfPassengers() -> Int {
        return numberOfPassengers
    }
}

let fordKa: Car = Car(carName: "FordKa", engine: "v8", numberOfWeels: 4, numberOfPassengers: 5)
let golf: Car = Car(carName: "Golf", engine: "v8", numberOfWeels: 4, numberOfPassengers: 5, heightOfWeel: 17)

func getWeelsHeight(car: Car) -> Int {
    guard let weelsHeight = car.heightOfWeel else {
        print("Weels height does not exist")
        return 0
    }
    return weelsHeight
}

func updateWeelsHeight(carToBeUpdated: Car, newHeight: Int) {
    carToBeUpdated.heightOfWeel = newHeight
}

getWeelsHeight(car: fordKa)

updateWeelsHeight(carToBeUpdated: fordKa, newHeight: 20)

if let fordkaHeight = fordKa.heightOfWeel, let golfHeight = golf.heightOfWeel {
    if fordkaHeight == golfHeight {
        print("Same weel heights")
    } else {
        print("Diferent weel heights")
    }
} else {
    print("One of the variables does not exist")
}

fordKa.getNumberOfPassengers()
