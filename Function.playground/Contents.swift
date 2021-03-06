import UIKit

var str = "Hello, FUNCTION!"
//Функции – это самостоятельные фрагменты кода, решающие определенную задачу. Каждой функции присваивается уникальное имя, по которому ее можно идентифицировать и "вызвать" в нужный месте.
//Каждая функция в Swift имеет свой тип, т.е. функциональный тип данных. Другими словами одна функция может быть параметром другой функции либо ее результирующим значением.
//СИНТАКСИС
//func nameFunction(входные аргументы)->(выходные параметры){код, решающий определенную задачу}

//Пример с входным аргументом - фокусное расстояние типа Int
func lenseFocus(focus: Int)->(){
        print("Фокусное расстояние вашего объектива = \(focus)!")
    }
lenseFocus(focus: 24)
//В языке Swift параметры функций и возвращаемые значения реализованы очень гибко.
//Разработчик может объявлять любые функции – от простейших, с одним безымянным параметром, до сложных, со множеством входных и выходных параметров и составными именами(код становиться понятен человеку и избавляет от нописания дополнительных комментарий и пояснений).
//При объявлении функции любому из ее параметров можно присвоить значение по умолчанию.
//Пример
func lenseFocusDefault(focus: Int = 24)->(){
    print("Фокусное расстояние вашего объектива = \(focus)!")
}
lenseFocusDefault()
//ВАЖНО! - Входные аргументы функции по умолчанию являются константами! Попытка изменить значение аргумента функции из тела этой функции приводит к ошибке компиляции.
//Пример, как не надо делать
func lenseFocusError(focus: Int)->(){
    //focus = 35 - При данной записе у вас будет следующее сообщение - Cannot assign to value: 'focus' is a 'let' constant
    print("Фокусное расстояние вашего объектива = \(focus)!")
}
//Если вы хотите, чтобы функция изменила значение аргументов, и вы хотите, чтобы эти изменения сохранились после того, как закончился вызов функции, определите этот параметр в качестве сквозного параметра.
//Пример
func lenseInOut(focus: inout Int){
    focus = 35
}
var focus = 50
lenseInOut(focus: &focus)
print("Фокусное расстояние = \(focus)")
//Функции можно перегружать - т.е. одно имя функции, но разные входные аргуметы
//Пример
func lenseFocus(focus:Int, mount:String)->String{
    return "Ваше фокусное расстояние \(focus), и имеет байонет типа - \(mount)"
}

//Как писал в начале - У каждой функции есть специальный функциональный тип, состоящий из типов входных аргументов и типа возвращаемого значения.
//Для примеденного примера с функцией lenseFocus - это будет (Int)->() и из этого следует что мы можем записать следующее
var lensePrint: (Int)->() = lenseFocus
//Это читается как "Объявляем переменную lensePrint, имеющую тип "функция, принимающая значение типа Int, и ничего не возвращающая|*. И присвоить этой новой переменной указатель на функцию lenseFocus".
//Теперь функцию можно вызывать с помощью переменной lenseFocus
lensePrint(24)

