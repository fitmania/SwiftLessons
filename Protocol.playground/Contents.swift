import UIKit

var str = "Hello, PROTOCOL!"
//Протокол - в общем виде - это набор соглашений, который определяет обмен данными между различными программами
//Протокол фактически не предоставляет реализацию для любого из этих соглашений, он только описывает как реализация должна выглядеть.
//Протокол можно применить в перечислениях, структурах и классах

//Наглядный пример - Используя один и тот же чертеж, вы можете построить множество домов. Мелкие детали конструкции могут отличаться, но в итоге вы получите похожие дома, которые будут отвечать требованиям чертежа постройки.
//То же самое и с протоколом: множество классов могут быть построены в соответствии с его требованиями
//СИНТАКСИС
//protocol NameProtocol{// определение протокола…}
// Пример - написали протокола, для магазина
protocol BuyLense{
    var phone:[String]{get set}
    func addPhone(phoneNumber:String)
    func addBuyers(buyers: Buyers)
}
class Buyers{
    var name: String
    var phone: String
    var delegate: BuyLense?
    init(name: String, phone: String, delegate: BuyLense){
        self.name = name
        self.phone = phone
        self.delegate = delegate
    }
    func writeMyName(){
        delegate?.addPhone(phoneNumber: self.phone)
        delegate?.addBuyers(buyers: self)
    }
}
class Owner: BuyLense{
    
    //MARK:- Protocol BuyLense
    var phone: [String] = [String]()
    
    func addPhone(phoneNumber: String) {
        phone.append(phoneNumber)
    }
    
    func addBuyers(buyers: Buyers) {
        print("Имя покупателя - \(buyers.name)")
    }
    
    
}

var owner = Owner()
owner.phone
var buer = Buyers(name: "Sasha", phone: "+375267328", delegate: owner)
var buer2 = Buyers(name: "Evgene", phone: "+375267329", delegate: owner)
buer.writeMyName()
buer2.writeMyName()
owner.phone



