import UIKit

var str = "Hello World"
//1
func stringCaps(str: String)->String{
    var array = Array(str)
    var results = ""
    for a in 0..<array.count{
        if array[a].isUppercase{
            array.insert(contentsOf: array[a].lowercased(), at: a)
            array.remove(at: a+1)
        }
        results+=String(array[a])
    }
    //2 Вариант
//    for a in array{
//        if a.isUppercase{
//            results += a.lowercased()
//        }
//        else{
//            results += String(a)
//        }
//    }
    print(array)
    return results
}
stringCaps(str: str)
//2
func stringReverse(str: String)->String{
    return String(str.reversed())
}
stringReverse(str: str)
//3
func stringToInt(str: String)->String{
    var results = ""
    for a in Array(str){
        results+=String(a.asciiValue!)+" "
    }
    return results
}
stringToInt(str: str)
