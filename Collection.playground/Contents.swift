import UIKit

var str = "Hello, COLLECTION!"
//Для хранения наборов данных(элементов) применяют Коллекции
//Swift обеспечивает три основных типа коллекций - это Массивы(Array), Наборы(Set) и Словари(Dictionary).
//Массивы - это упорядоченные коллекции значений (индекс-значение).
//Множества - это неупорядоченные коллекции, но имеющие только уникальные значения.
//Словари - это неупорядоченные коллекции, хранящие пары "ключ-значение".

//Инициализация пустых коллекций
var array: Array<Int> = [] //или array = [Int]()
var set: Set<Int> = []//или set = Set[Int]()
var dictionary: Dictionary<Int,Int> = [:]//или dictionary = [Int:Int] = [:]

//Добавления элементов в коллекции
array.append(24)//добавляет новый элемент в конец
array.insert(24, at: 0)//добавляет новый элемент на указанное место
set.insert(24)
dictionary[24]=34//добавляем новую пару ключ=24 - значение=35

//Удаление элемента из коллекции
array.remove(at: 0)//где 0 - это индекс элемента
set.remove(24)//где 24 - сам элемент
dictionary.removeValue(forKey: 24)

//Передача элемента из коллекции
//массив
var a = array[0]
//набор
if set.contains(24){
    a = 24
}
//словарь - тут надо понимать что такое ОПЦИОНАЛЬНЫЙ ТИП
if let b = dictionary[24]{
    a = b
}
//БАЗОВЫЕ МЕТОДЫ
//Количество элементов
array.count
set.count
dictionary.count
//Проверка пустая коллекция или нет
array.isEmpty
set.isEmpty
dictionary.isEmpty
//Поиск максимального (минимального)
array.max()//.min()
set.max()//.min()
dictionary.values.max()//.values.min()
//Кроме базовых существуют еще множество метадов, которые можно прочитать - https://developer.apple.com/documentation/swift/
//Использование операторов потока для прохождения по каждому элементу коллекции
//Для массивов (2 способа)
//1
for i in array{
    print(i)
}
//2
for i in 0..<array.count{
    print(array[i])
}
//Для наборов
for i in set{
    print(i)
}
//Для словарей
for i in dictionary.keys{
    print(dictionary[i]!)
}
