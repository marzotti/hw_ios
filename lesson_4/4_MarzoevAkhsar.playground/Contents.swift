import UIKit

enum CarModel {
    case lada, volvo, man, audi, kia, kamaz
}
enum BodyLift {
    case raised, lowered
}
enum HatchState {
    case open, close
}
enum WindowsOpen {
    case open, close
}
enum Transmission {
    case manual, auto
}


class Car {
    let carModel: CarModel
    let yearOfIssue: Int
    let trunkVolume: Double
    var engineRunning: Bool
    var windowsOpen: WindowsOpen
    let transmission: Transmission
    init(carModel: CarModel, yearOfIssue: Int, trunkVolume: Double, engineRunning: Bool, windowsOpen: WindowsOpen, transmission: Transmission) {
        self.carModel = carModel
        self.yearOfIssue = yearOfIssue
        self.trunkVolume = trunkVolume
        self.engineRunning = engineRunning
        self.windowsOpen = windowsOpen
        self.transmission = transmission
    }
}


class TrunkCar: Car {
    let maxWeight: Double
    var bodyLift: BodyLift
    init(carModel: CarModel, yearOfIssue: Int, trunkVolume: Double, engineRunning: Bool, windowsOpen: WindowsOpen, transmission: Transmission, maxWeight: Double, bodyLift: BodyLift) {
        self.maxWeight = maxWeight
        self.bodyLift = bodyLift
    super.init(carModel: carModel, yearOfIssue: yearOfIssue, trunkVolume: trunkVolume, engineRunning: engineRunning, windowsOpen: windowsOpen, transmission: transmission)
    }
    func liftTheBody() {
        bodyLift = .raised
    }
    func lowerTheBody() {
        bodyLift = .lowered
    }
}


class SportCar: Car {
    let maxSpeed: Double
    var hatchState: HatchState
    init(carModel: CarModel, yearOfIssue: Int, trunkVolume: Double, engineRunning: Bool, windowsOpen: WindowsOpen, transmission: Transmission, maxSpeed: Double, hatchState: HatchState) {
        self.maxSpeed = maxSpeed
        self.hatchState = hatchState
    super.init(carModel: carModel, yearOfIssue: yearOfIssue, trunkVolume: trunkVolume, engineRunning: engineRunning, windowsOpen: windowsOpen, transmission: transmission)
    }
    func openHatch() {
        hatchState = .open
    }
    func closeHatch() {
        hatchState = .close
    }
}

var auto1 = Car(carModel: .kia, yearOfIssue: 2018, trunkVolume: 350, engineRunning: false, windowsOpen: .close, transmission: .auto)
var auto2 = TrunkCar(carModel: .man, yearOfIssue: 2015, trunkVolume: 21000, engineRunning: true, windowsOpen: .open, transmission: .manual, maxWeight: 10000, bodyLift: .lowered)
var auto3 = SportCar(carModel: .audi, yearOfIssue: 2020, trunkVolume: 200, engineRunning: false, windowsOpen: .close, transmission: .auto, maxSpeed: 300, hatchState: .close)

auto3.openHatch()
auto2.liftTheBody()

