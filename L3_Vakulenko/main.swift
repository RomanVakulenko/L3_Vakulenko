////  main.swift
//  L3_Vakulenko
////  Created by Roman Vakulenko on 04.05.2022.

import Foundation
// 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
// 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
struct SportCar {
    let brand: String
    let productionYear: Int
    var trunkVolume: Int
    let turnEngineOn: Bool
    let turnEngineOff: Bool
    let openWindows: Bool
    
    mutating func change (chanhingTrunkVolume: ActionWithCar, cargoAmount: Int){
        switch chanhingTrunkVolume {
        case .putCargoInCar:
           print ("TrunkVolume became = \(trunkVolume = trunkVolume - cargoAmount)")
        default:
            print("Cargo was't putted in SportCar")
        }
    }
}
struct TrunkCar {
    let brand: String
    let productionYear: Int
    var trunkVolume: Int
    let turnEngineOn: Bool
    let turnEngineOff: Bool
    let openWindows: Bool
}
// 5. Инициализировать несколько экземпляров структур.
var audiRS6 = SportCar (brand: "audi", productionYear: 2020, trunkVolume: 900, turnEngineOn: true, turnEngineOff: false, openWindows: false)
var maz = TrunkCar (brand: "MAZ", productionYear: 2009, trunkVolume: 8000, turnEngineOn: false, turnEngineOff: true, openWindows: true)
// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
enum ActionWithCar {
    case turnEngineOn, turnEngineOff
    case openWindows, closeWindows
    case putCargoInCar, takeOffCargoFromCar
}

// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
SportCar.change(<#T##self: &SportCar##SportCar#>)

// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
audiRS6.trunkVolume = 300
maz.trunkVolume = 7000

// 6. Вывести значения свойств экземпляров в консоль.
print("марка машины - \(audiRS6.brand)\n", "год выпуска - \(audiRS6.productionYear)\n", "объем багажника = \(audiRS6.trunkVolume)\n", "запущен ли двигатель - \(audiRS6.turnEngineOn)")
