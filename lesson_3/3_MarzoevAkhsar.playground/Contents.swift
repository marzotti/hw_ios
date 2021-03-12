import UIKit

enum carModel {
    case lada, volvo, man, audi, kia, kamaz
}

enum typeOfCar {
    case SportCar, TrunkCar
}

enum windowsOpen {
    case open, close
}

struct Auto {
    let carModel: carModel
    let typeOfCar: typeOfCar
    let yearOfIssue: Int
    let trunkVolume: Double
    var engineRunning: Bool
    var windowsOpen: windowsOpen
    mutating func closeWindows() {
        self.windowsOpen = .close
    }
    mutating func openWindows() {
        self.windowsOpen = .open
    }
    var percentFilledTrunkVolume: Double
}

var sedan = Auto(carModel: .kia, typeOfCar: .SportCar, yearOfIssue: 2020, trunkVolume: 480, engineRunning: false, windowsOpen: .close, percentFilledTrunkVolume: 0)
var truck = Auto(carModel: .kamaz, typeOfCar: .TrunkCar, yearOfIssue: 2020, trunkVolume: 20000, engineRunning: false, windowsOpen: .close, percentFilledTrunkVolume: 50)

print(sedan)
print(truck)
