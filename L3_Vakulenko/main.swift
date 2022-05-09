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
    
    mutating func change (changingTrunkVolume: ActionWithCar, cargoAmount: Int){
        switch changingTrunkVolume {
        case .putCargoInCar:
           print ("Not used trunkVolume of SportCar became = \(trunkVolume - cargoAmount)")
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
// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
enum ActionWithCar {
    case turnEngineOn, turnEngineOff
    case openWindows, closeWindows
    case putCargoInCar, takeOffCargoFromCar
}
// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
var audiRS6 = SportCar (brand: "audi", productionYear: 2020, trunkVolume: 900, turnEngineOn: true, turnEngineOff: false, openWindows: false) //- здесь я инициализировал экземпляр, так?
audiRS6.change(changingTrunkVolume: .putCargoInCar, cargoAmount: 100) // а тут я уже применил действие к экземпляру
var maz = TrunkCar (brand: "MAZ", productionYear: 2009, trunkVolume: 8000, turnEngineOn: false, turnEngineOff: true, openWindows: true)
maz.trunkVolume = 7000  // тут как я понимаю я НЕ инициализировал - верно я понял?

// 6. Вывести значения свойств экземпляров в консоль.
print("марка машины - \(audiRS6.brand)\n", "год выпуска - \(audiRS6.productionYear)\n", "объем багажника = \(audiRS6.trunkVolume)\n", "запущен ли двигатель - \(audiRS6.turnEngineOn)")
