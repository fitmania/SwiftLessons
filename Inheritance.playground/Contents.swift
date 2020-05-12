import UIKit

var str = "Hello, INHERITANCE!"
//Наследование - это фундаментальное свойство, которое отличает Классы от других типов в Swift.
//Классы Swift не наследуются от универсального базового класса. Классы, которые вы определяете без указания суперкласса, автоматически становятся базовыми для вас.

//Пример. Есть базовый класс - Объектив, со свойством - фокусное расстояние, типа Int и метода по определению оптимального расстояния для съемки
class Lense{
    var focus: Int
    init(focus: Int) {
        self.focus = focus
    }
    func raschetLength(){
        print("Лучшее расстояние для сьемки = \(5*self.focus) sm")
    }
}
var lenseA = Lense(focus: 24)
//Затем у нас есть класс - Мобильный объектив, который наследуется от Класса Объектив, а так же добавлено новое свойства - как крепление объектива и переопределн метод рассчета оптимального фокусного расстояния
class LenseMobile:Lense{
    var mount: Bool
    init(mount: Bool) {
        self.mount = mount
        super.init(focus: 35)
    }
    init(mount: Bool, focus: Int) {
        self.mount = mount
        super.init(focus: focus)
    }
    final override func raschetLength() {
        print("Лучшее расстояние для сьемки \(2*focus)")
    }
}
var lenseB = LenseMobile(mount: true)
class LenseMobileIphone: LenseMobile{
    
    init() {
        super.init(mount: true)
    }
}
var lenseC = LenseMobileIphone()
//Доступ к методам, свойствам, индексам суперкласса - с помощью super
//Вы можете предотвратить переопределение метода, свойства или индекса, обозначив его как конечный. Сделать это можно написав ключевое слово final перед ключевым словом метода, свойства или индекса
//Из наследование вытикает приведение типов
var array = [Lense]()
array.append(lenseA)
array.append(lenseB)
array.append(lenseC)
// as! as?
//Сортируем по типам
for i in array{
    switch i {
    case let someLense as Lense:
        print(someLense)
    case let someLenseMobile as LenseMobile:
        print(someLenseMobile)
    case let someLenseMobileIphone as LenseMobileIphone:
        print(someLenseMobileIphone)
    }
}
//Any - для типов
//AnyObject - экземпляров классов
var arrayAny = [Any]()
arrayAny.append(1)
arrayAny.append("String")
arrayAny.append(2.0)
arrayAny.append(5)
var arrayInt = [Int]()
for i in arrayAny{
    if let j = i as? Int{
        arrayInt.append(j)
    }
}
arrayInt

class Radio{
    var freqvency: Double = 99.5
}
var radioFm = Radio()

var arrayB = [AnyObject]()
arrayB.append(lenseA)
arrayB.append(lenseB)
arrayB.append(lenseC)
arrayB.append(radioFm)


//Домашнее задание
//Дан масив [Any] = [1, 10.0, "1", 2, 45, 33.0, "q", -10, "Name", 33]
//Отсортировать данный массив по [Int], [Double], [String] - Используя функции (3)
//Отсортировать данный массив по [Int], [Double], [String] - Используя switch
//Разбить массив [Int] на два подмассива, четные индексы это один массив
//Разбить массив [Int]  - четные, нечетные
//Написать базовый класс Объектив со свойствами - продумать какие-именно! и Несколько подклассов
