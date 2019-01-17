//Remote Learning Assignment - Week 2

//Object-Oriented Swift
//1.
enum Gender {
    case male
    case female
    case undefined
}
class Animal {
    let gender: Gender
    init(gender: Gender) {
        self.gender = gender
    }
    func eat() {
        print("I eat everything!")
    }
}

//2.
class Elephant: Animal {
    override func eat() {
        print("I eat grass!")
    }
}
class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}
class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}

//3.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))
let tiger = Tiger(gender: .undefined)
let elephant = Elephant(gender: .undefined)
let horse = Horse(gender: .undefined)
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//4.
/*
Swift中有兩種主要的物件：Struct和Class。Strcut和Class的Syntax類似，如下：
 struct Person {
    let name: String
    var age: Int
    func someMethod() {
    }
 }
Struct和Class可以有properties、method和initializers。且透過定義的Stuct或Class可以產生Struct或Class的instance來使用。
(Struct和Class的不同之處參見第5題)
*/

//5.
/*
The difference between Struct and Class
1.Class有繼承(inheritance)的能力，能繼承另一個Class
2.Struct是value type，當把一個Struct assign給新的常數或變數時，是複製一份相同的值，存在新的記憶體，assign給新的常數或變數
  Class是reference type，當把一個Class assign給新的常數或變數時，不是複製一份相同的值，而是讓新的常數或變數參考已經存在的instance，指向同一個記憶體
3.Struct有memberwise initializer，而Class沒有。意即使用Struct時，不一定要使用者自己定義初始化方法，可以直接使用Swift的memberwise initializer，但Class要使用者自己定義初始化方法(除非Class所有的properties都已有預設值)。
*/

//6.
//instance method是需要透過type（如：Class、Struct或Enum）的instance來呼叫的method
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
}
Counter().increment()
//type method是直接從type呼叫的method
class Counter2 {
    static var count = 0
    static func increment() {
        count += 1
    }
}
Counter2.increment()

//7.
//Initilizer是一個特別的instance method，可以初始化Class和Struct中的properties值，讓Class和Struct可以開始使用。

//8.
//self in instance method指的是instance
class Counter3 {
    var count = 0
    func increment() {
        self.count += 1   //self指Counter3()
    }
}
//self in type method指的是type
class Counter4 {
    static var count = 0
    static func increment() {
        self.count += 1   //self指Counter4
    }
}

//9.
/*
value type，當把值assign給新的常數或變數時，是複製一份相同的值，存在新的記憶體，assign給新的常數或變數
reference type，當把值assign給新的常數或變數時，不是複製一份相同的值，而是讓新的常數或變數參考已經存在的instance，指向同一個記憶體
*/



//Enumerations and Optionals in Swift
//1.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return 26.1
        case .oil95:
            return 27.6
        case .oil98:
            return 29.6
        case .diesel:
            return 23.9
        }
    }
}
//associate value是與enum case一起儲存的值，可以是任何型別，不同case不需相同。
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
//且可以在使用時給予不同的值。
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//使用上可以透過switch將enum case中的值取出來做使用。
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

//2.
class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}
class People {
    var pet: Pet?
}
let terry = People()
func havePet(people: People) -> Pet? {
    guard let pet = people.pet else { return nil }
    return pet
}
havePet(people: terry)
func havePet2(people: People) -> Pet? {
    if let pet = people.pet {
        return pet
    }
    return nil
}
havePet2(people: terry)



//Protocol in Swift
//1.2.3.4.
protocol PoliceMan {
    func arrestCriminals() -> Void
}
protocol ToolMan {
    func fixComputer() -> Void
}
struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    func arrestCriminals() {}
}

//5.
struct Engineer: ToolMan {
    func fixComputer() {}
}

//6.
Person(name: "Steven", toolMan: Engineer())



//Error Handling in Swift
enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}
do {
    try GuessNumerGame().guess(number: 20)
} catch {
    print(GuessNumberGameError.wrongNumber)
}
