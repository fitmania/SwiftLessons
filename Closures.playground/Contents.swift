import UIKit

var str = "Swift Closures!"

//Частный случай функции
//Одна функция группирует код -> sortLenses(), вторая производит операцию сравнения->closure: (Int)->(Bool)

//Пример #1
let lenses = [24,35,50,85,70,100,135]
func sortLenses(lens: [Int], closure: (Int)->Bool)->[Int]{
    var lense = [Int]()
    for i in lens{
        if closure(i){
            lense.append(i)
        }
    }
    
    return lense
}
func sortPortret(a: Int)->Bool{
    return (a>35 && a<100)
}
func sortL(a: Int)->Bool{
    return a>=100
}

sortLenses(lens: lenses, closure: sortPortret)
sortLenses(lens: lenses, closure: sortL)
//Если функции надо много, то можно использовать замыкающие выражения
//Замыкающие выражения - это безымянные замыкания, использующие облегченный синтаксис
//Пример замыкающие выражния
var lenseA = sortLenses(lens: lenses, closure: {(lense: Int)->Bool in return lense>70})
lenseA
//Упрощенная запись. Не неда указывать - return, тип возвращаемого значения
var lenseB = sortLenses(lens: lenses, closure: {lense in lense>=50})
lenseB
//Сокращенная запись.
var lenseC = sortLenses(lens: lenses, closure: {$0>=35})
lenseC
// Здесь $0 - это первый входной аргумент, если бы в closure был второй, то $1 - означал второй входной аргумент
//Пример метод сортировки массива
lenses.sorted { (first: Int, second: Int) -> Bool in
    return first>second
}
//Или сокращенная запись
lenses.sorted(by: {$0>$1})





