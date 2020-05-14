import UIKit

var str = "Hello, STRING!"
//Строка представляет собой совокупность символов, например "hello, world" или "lense". Строки в Swift представлены типом String.
//Тип String в Swift является типом значения. Когда вы создаёте строку, а затем ее присваеваете константе или переменной или передаете в функцию. В каждом случае создается новая копия существующего значения строки, и передаётся либо присваивается новая копия, а не ИСХОДНАЯ строка.
//Тип String в Swift представляет собой коллекцию значений Character в указанном порядке.
//КОНКАТЕНАЦИЯ. Значения типа String могут быть добавлены или конкатенированы с помощью оператора сложения (+):
let string1 = "hello"
let string2 = " string!"
var hello = string1 + string2
//ВАЖНО - Вы не можете добавить String или Character к уже существующей переменной типа Character, потому что значение типа Character должно состоять только из одиночного символа.
//Интерполяция строк - способ создать новое значение типа String из разных констант, переменных, литералов и выражений, включая их значения в строковый литерал:
hello = "Интерполяция строки пример \(string1) "
//Чтобы получить количество значений Character в строке, используйте count для строки
hello.count
//Каждое String значение имеет связанный тип индекса: String.Index, что соответствует позиции каждого Character в строке.
//Для того, чтобы вставить символ в строку по указанному индексу, используйте insert(_:at:) метод:
hello.insert("!", at: hello.endIndex)
//Для того, чтобы удалить символ из строки по указанному индексу используйте remove(at:)
hello.remove(at: hello.startIndex)
//Swift предусматривает сравнения текстовых значений: равенство строк и символов.
//Равенство строк и символов проверяется оператором "равенства" (==) и оператором "неравенства" (!=)
