import UIKit

var str = "Hello, STRUCT"
//Структура - это объектный тип данных. Свойства типа - тип-значение (value type). Сходен по многим признакам с классом. Я бы назвал его переходным звеном между перечислением и классом. Многие Типы данных, которые упоминались ранее - описаны с помощью структур (например: Int)
//Синтаксис
// struct NameStruct{}
//Пример простой структры
//struct SimpleLense{
//    var focus: Int
//    var length: Int
//}
//В Структурах в ОТЛИЧИЕ от Классов инициализаторы генерируются сами!
//var lenses = SimpleLense(focus: 24, length: 50)
//Однако если есть желание, то можно написать инициализатор самому с помощью init()
//Так же можно использовать методы в структурах
struct SimpleLense{
    var focus: Int
    var length: Int
    func description(){
        print("Фокусное рассстояние объектива = \(self.focus)")
    }
}
var lenses = SimpleLense(focus: 35, length: 50)
//Выводиться информация о фокусном расстоянии
lenses.description()
//Пример структуры для описания свойств объектива(в структуру могут входить и Перечисления)
struct Lense{
    let isFixed: Bool
    var focus: Int
    let produce: Manufacturer
}
enum Manufacturer:String{
    case sigma = "sigma"
    case nikon = "nikon"
    case canon = "canon"
    case panasonic = "panas"
    case tamron = "tamron"
}
//Инициализация экземпляра объектив
var lense = Lense(isFixed: true, focus: 24, produce: Manufacturer.canon)
//Проверяем на примере что структура имеет свойтсво копирования экземпляра, а не копирование ссылки на экземпляр
var lenseB = lense
lenseB.focus = 35
lense
lenseB




