import UIKit
//ПЕРЕЧИСЛЕНИЯ
var str = "Hello, ENUM"

//1
// Перечесления - это объектный тип данных
// Можно рассматривать перечесления как набор констант. Если уже инициализировали перечисления, изменить не получиться
// В какой-то мере исключает влияние "человеческого фактора".
// СИНТАКСИС
// enum Имя{case значение1}
// Пример, созданим перечисление марки линз
enum Lense{
    case canon
    case nikon
    case panasonic
    case фуджик
}
//В данном примере canon - это член Перечисления
//Доступ к значениям осуществляется
let lense = Lense.canon
Lense.фуджик // Это работает, но так не рекомендую (стараемся писать на Eng)
// Каждый член Перечисления может обладать своими характеристиками(свойсвами)
//Пример, добавляем к маркам линз - характеристики
enum LenseWithProperties{
    case canon(focus: Int)
    case nikon(focus: Int,bayonet: String)
    case panasonic(focus: Int)
    case фуджик(focus: Int)
}
var lense2 = LenseWithProperties.nikon(focus: 24, bayonet: "nikon")
//Для того что бы получить доступ к характеристикам члена Перечисления, используют оператор switch. Пример
switch lense2 {
    case .canon(let focus):
        print("Фокусное расстояние - \(focus)")
    case .nikon(let focus, let bayonet):
        print("Фокусное расстояние - \(focus), и \(bayonet)")
    case .panasonic(let focus):
        print("Фокусное расстояние - \(focus)")
    case .фуджик(let focus):
        print("Фокусное расстояние - \(focus)")
}
// Если характеристика члена можно описать одной переменной, можно применять связанные значения следующих типов - Int, String, Character
// Пример для String
enum LenseWithString: String{
    case canon = "Canon"
    case nikon = "Nikon"
    case panasonic = "Panasonic"
    case фуджик = "Фуджик"
}
//для доступа к связанному значению члена перечисления применяем rawValue
var lenseA = LenseWithString.canon
lenseA.rawValue

//Важно!
//Код читабелен для человека!!!
//Если уже заданны, то свойства не меняются

