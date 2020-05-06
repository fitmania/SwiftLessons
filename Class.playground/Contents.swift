import UIKit

var str = "Hello, CLASS"
//Класс - это объектный тип данных. Свойства типа - тип-ссылка (reference-type). Обладает важным свойством - наследованием! В отличие от структуры, класс имеет только пустой инициализатор init(). Экземпляр класса можно проверять на сотвествие определенному типу данных или привидение типов
//Синтаксис
//class NameClass{}
//Пример простого класса, который описывает только свойства, без встроенных методов
//class SimpleLense{
//    var focus: Int
//    let isFixed: Bool
//    init(focus: Int, isFixed: Bool){
//        self.focus = focus
//        self.isFixed = isFixed
//    }
//}
////Инициализируем экземпляр данного класса
//var lense = SimpleLense(focus: 24, isFixed: true)
////Проверим что класс - это тип-ссылка
//var lenseB = lense
//lenseB.focus = 35
//lenseB
//lense
//Так же в Классах можно использовать методы и задавать свои инициализаторы
class SimpleLense{
    var focus: Int
    let isFixed: Bool
    init(focus: Int, isFixed: Bool){
        self.focus = focus
        self.isFixed = isFixed
    }
    init(focus: Int) {
        self.focus = focus
        self.isFixed = false
    }
    func description(){
        print("Фокусное расстояние = \(self.focus)")
    }
}
var lense = SimpleLense(focus: 24)
lense.description()
