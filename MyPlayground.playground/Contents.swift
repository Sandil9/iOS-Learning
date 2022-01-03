import UIKit

//Variables, Constants and Literals

//var testVariable = 50
//
//testVariable = 60
//var testVariableString = "Test String"
//
//
////testVariableString = 50
//
//// Constants
//
//let testConstant = 30
//let testConstant2 = 30
//
//testConstant * testConstant2
//
//
//let testConstant3 = 30.0
//let testConstant4 = 30.0
//
//testConstant3 * testConstant4
//
////testConstant = 50
//let testConstantStrings = "test string"
//
////testConstantStrings = "change"
//
////Literals
//
//// Data Types
//
////Int
//var testInt : Int = 30
//
////BOOL
//let testBool : Bool = true
//
////Character
//var testCharacter : Character = "s"
//
////String
//let testString : String = "sasd"
//let str1 = "Hello world"
//let str2 = "I love swift"
//let str3 = "Hello World"
//
//let result = (str1 == str2)
//let result2 = (str1 == str3)
//
//var test = "WORLD"
//var test2 = "World"
//
//var concatenateResult = test + " " + test2
//
////var appendedResult: () = test.append(test2)
//test.isEmpty
//test.capitalized
//test.uppercased()
//test.lowercased()
//test.hasPrefix("O")
//test.hasSuffix("d")
////Escape Sequence
//var escapeExample = "This is \"String\" class"
//// \0 \\ \t \n \"
//
//let name  = "Swift"
//let age  = 50
//
//var message = "This is \(name) programming"
//var message2 = "Age is \(age)"
//var sinleStr : String = "Swift is awesome"
//var multileLineStr : String = """
//Swift is awesome
//I love Swift
//This is multi line
//"""
//
////Output
//print("Swift is language")
//
////print(, separator: , terminator: )
//
//print("It's good day today!", terminator: " This is terminator ")
//print("It's rainy day")
//
//print("Swift","Language","iOS", separator:"/")
//
//print(5)
//print("This is"+" Swift")
//
////Swift Expressions
//var example = 80
//
//var resultExp = (str1 == str2)
//
////Swift Statement
//print("This is"+" Swift")
//
////1. Simple Statement
//
//var score = 9 * 5
//
////2. Conditional Statements
//var ageSt = 8
//if(ageSt > 18) {
//    print("Can Vote")
//}else{
//    print("You can not vote")
//}
//
//if(ageSt > 18){
//    print("I am above 18")
//}else if(ageSt > 10){
//    print("I am above 10")
//}else{
//    print("I am not eligible")
//}
//if(ageSt > 10){
//    if(ageSt == 18){
//        print("Can Vote")
//    }else{
//        print("Can not vote")
//    }
//}
//
//// Switch Statement
//let daysOfWeek = 3
//switch daysOfWeek {
//case 1:
//    print("Sunday")
//case 2:
//    print("Monday")
//case 3:
//    print("Tuesday")
//    fallthrough
//case 4:
//    print("Thursday")
//default:
//    print("Invalid day")
//}
//
////3. Loop Statement
////for var _ in
////    {
////    print("Hello World")
////}
//
//let languages = ["Swift", "Java", "Go", "JavaScript"]
//for language in languages {
////      print(language)
//}
//for language in languages where language != "Java"{
//    print(language)
//}
//for i in 1...3 {
//    print(i)
//}
//
////While loop
//var i = 1, n = 0
//while (i <= n){
//    print(i)
//    i += 2
//}
//
////repeat...while loop
//repeat{
//    print(i)
//    i = i+1
//}while (i <= n)
//
////Code Blocks
//
//if true {
//    let sum = 2+3
//    print("This is sum \(sum)")
//}
//
////Optionals
//let someValue = Int()
//print(someValue)
//
//var someValue1:Int? = 5
//var someValue2:Int! = 5
////print(someValue1!)
//print(someValue2!)
////print(someValue2)
//var someValue3:Int? = 5
////var unwrappedValue:Int = someValue3!
////Optional handling
//
//if someValue3 != nil {
//    var unwrappedValue:Int = someValue3!
//    print("It has some value")
//}else{
//    print("it does not have value")
//}
//
////Optional Binding (if-let)
//
//if let temp = someValue3 {
//    print("It has some value:\(temp)")
//}else{
//    print("it does not have value")
//}
////Guard Statement
//
//func testFunction() {
//    let guardValue:Int? = 0
//    guard let temp = guardValue else {
//        print("No value exists")
//    }
//    print("has some value \(temp)")
//}
//testFunction()
//var a: Int?
//var b: Int?
//a ?? b

//var coalescingValue:Int?
//let defaultValue = 5
//let unwrappedValue:Int = coalescingValue ?? defaultValue
//print(unwrappedValue)

//Operators
//Arithmetic Operators
//var sum = 5 + 10
//var sub = 10 - 5
//var resultOp = 5 / 2
//var resultFloat = 5.0 / 2.0
//var resultMod = 9 % 4

//Assignment Operators
//var x = 10
//var y = 2
//y += 10  //y = y + 10
//y -= 8

//Comparison Operators

//y > x
//y == x
//y != x
//y >= x
//y <= x

//Logical Operators
//var logicalResult = (!(x < 2) || (y <= 6))

//Ternary Operators
//(condition) ? (true) : (false)
//(1 > 2) ? "Success" : "Error"
//
//var num = 8 + 5 * 4
//
////
//print(6 * 4 / 3)

//Ternary Operators
//let marks = 60
//if (marks > 30){
//    print("abc")
//}else{
//    print("not met")
//}
//(marks > 60) ? print("abc") : print("not met")
//
//(marks > 60) ? print("abc") : ((marks > 40) ? print("Above 40") : print("less marks"))

//Bitwise Operator
//var a = 12
//var b = 25
//00001100
//00011001
//00001000
//00011101
//var resultBinar = a & b
//var resultOr = a | b

//Nested Loop
//for week in 1...2 {
//    print("Week: \(week)")
//    for day in 1...7 {
//        print(" Day: \(day)")
//    }
//}
//var i = 0
//var n = 5
//while (i <= n) {
//    print("I am main loop")
//    var j = 0
//    while(j < 2){
//        print("I am nested loop")
//        j += 1
//    }
//    i += 1
//}

//var weeks = 2
//var i = 1

//while (i <= weeks){
//    print("Week: \(i)")
//
//    for day in 1...7 {
//        print(" Day: \(day)")
//    }
//    i += 1
//}

//outerloop: for week in 1...3 {
//    print("Week: \(week)")
//    innerloop: for day in 1...7 {
//        if (day == 3){
//            continue outerloop
//        }
//        print(" Day: \(day)")
//
//    }
//}

//Guard Statement

//var i = 2
//
//while (i <= 10) {
//    guard i%2 == 0, i < 10 else {
//        i += 1
//        continue
//    }
//    print(i)
//    i += 1
//}

//Swift Arrays

//var numbers : [Int] = [2, 1, 3, 4, 6, 7, 5, 9, 8]
//print("Array: \(numbers)")

//var numbers2 = [2, 4, 6, 8]
//print("Array: \(numbers2)")

//var values = [Int]()
//print("Array: \(numbers2[1])")

//Using Append Method
//print("Befor Append: \(numbers)")

//numbers.append(10)

//print("After Append: \(numbers)")

//values.append(contentsOf: numbers)

//print("After Append: \(values)")

//Using Insert method
//numbers.insert(3, at: 1)
//print("After Insert: \(numbers)")

//numbers[2] = 5
//print("After Insert: \(numbers)")

//numbers.remove(at: 1)

//numbers.removeFirst()
//numbers.removeLast()
//numbers.removeAll()

//numbers.sort()
//numbers.shuffle()
//numbers.contains(10)
//numbers.reverse()
//print("Updated: \(numbers)")
//
//for number in numbers {
//    print(number)
//}
//print("Total Element: \(numbers.count)")
//print("Empty Element: \(values.isEmpty)")
//
//var address : [Any] = ["String", 570]
//address.append(570.0)

//Swift Set
//var studentID : Set = [112, 114, 116, 118, 115]
//
////print("Student ID: \(studentID)")
//
//studentID.insert(32)
////print("Updated Set: \(studentID)")
//
//studentID.remove(32)
//
////studentID.removeAll()
//studentID.sorted()
//studentID.contains(11)
////studentID.removeFirst()
//print("Updated Set: \(studentID)")
//
//for id in studentID {
//    print(id)
//}

//print("Count is: \(studentID.count)")
//Union of sets

//let setA : Set = [0, 2, 4]
//let setB : Set = [0, 2, 4]
//
//setA.union(setB)
//
//setA.intersection(setB)
//
//setB.subtracting(setA)
//setA.symmetricDifference(setB)
//
//if setA == setB {
//    print("Sets are equal")
//}else{
//    print("Sets are not equal")
//}
//
//var emptySet = Set<Int>()

//Swift Dictionary

//var capitalCity = ["Nepal": "Khatmandu", "Italy": "Rome", "England": "London"]
//print(capitalCity)
//
//capitalCity["Japan"] = "Tokyo"
////print("Updated Dict: \(capitalCity)")
//
//capitalCity["Nepal"] = "Khatmandu City"
////print("Updated Dict: \(capitalCity)")
//
//print("Keys are: \(capitalCity.keys)")
//print("Values are: \(capitalCity.values)")
//
//print("Dictionary after removal: \(capitalCity.removeValue(forKey: "Nepal"))")
//print(capitalCity)
//
//for (key, value) in capitalCity {
//    print("\(key): \(value)")
//}
//
//print("Dictionary count: \(capitalCity.count)")
//
//var emptyDictionary = [Int: String]()

//Swift Tuple

//var product = ("MacBook", 1099)
//product.0
//product.1
//
//product.1 = 1099
//print("Update tuple: \(product)")
//
//var company = (productName: "Swift", version: 5.0)
//company.productName
//
//var alphabets = ("A", "B", "C", ["a": 1, "b": 2, "c": 3])
//alphabets.0
//alphabets.1
//alphabets.3["a"] = 4
//alphabets.3

//Swift Function
//func functionName(parameters)-> returnType{
//    functionBody
//}
//func greet() {
//    print("Hello")
//}
//greet()
//
//func addNumbers(num1: inout Int)-> Int {
//    var sum = num1
//    num1 = 3
//    print(sum)
//    return sum
//}
//var num = 12
//addNumbers(num1: &num)
//
//func sum(numbers: Int...) {
//    var result = 0
//    for num in numbers {
//        result = result + num
//    }
//    print(result)
//}
//sum(numbers: 1, 2, 3, 4)
//
//func compute(num1: Int)-> (Int, Int) {
//    var square = num1 * num1
//    var cube = square * num1
//    return (square, cube)
//}
//var result = compute(num1: 12)
//result.0
//result.1

//Nested Function

//func greetMessage() {
//
//    func displayMessage(){
//        print("Good Afternoon!")
//    }
//    displayMessage()
//}
//greetMessage()

//
//func addNumbers() {
//
//    func displaySum(num1: Int, num2: Int){
//        print("Sum is:",num1 + num2)
//    }
//    displaySum(num1: 12, num2: 13)
//}
//addNumbers()
//
////
//func operate(symbol: String) -> (Int, Int) -> Int {
//
//    func add(num1: Int, num2: Int)->Int{
//        return num1 + num2
//    }
//    func subtract(num1: Int, num2: Int) -> Int {
//        return num1 - num2
//    }
//
//    let operation = (symbol == "+") ? add : subtract
//    return operation
//}
//
//let operation = operate(symbol: "+")
//let result = operation(8,3)

//Swift Ranges

//var numbers = 1...4

//Closed Range
//var numbers = 1...4
//for number in 1...4 {
//    print(number)
//}

//Half open range
//for number in 1..<4 {
//    print(number)
//}

//One sided Range
//let range = ..<2
//let range1 = 2...
//
//range.contains(4)
//range1.contains(100)

//
//let languages = ["Swift", "Java", "C"]
//
//print(languages[0...2])

//Function Overloading

//func displayValue(person age: Int){
//    print("Person1 age:", age)
//}
//func displayValue(person2 age: Int) {
//    print("Person2 Age:",age)
//}
//displayValue(person: 30)
//displayValue(person2: 25)

//Swift Closures
//{ (parameters) -> returnType in
//    //body of closure
//}
//var greet = {
//    print("My closure")
//}

//closure with params
//let greetUser = { (name: String) in
//    print("Hey there, \(name)")
//}
//greetUser("John")

//closure with return values
//var findSquare = { (num: Int) -> (Int) in
//    var square = num * num
//    return square
//}
//
//var result = findSquare(3)
//
////closure as function parameters
//
//func searchFood (num1: Int, search: @autoclosure ()->()) {
//    print("Let's go out for food")
//
//    search()
//}
//searchFood(num1: 12 ,search: print("Some Pizza: 2 miles away"))
//searchFood(num1: 12 ,search: {
//    print("Some Pizza: 2 miles away")
//})
//
//Classes
//class Room {
//
//    var length = 0.0
//    var width = 0.0
//
//    init(length: Double, width: Double) {
//        self.length = length
//        self.width = width
//    }
//
//    func calculateArea() {
//        print("Area of room =",length * width)
//    }
//}
//
//var studyRoom = Room(length: 30.0, width: 42.8)
//
////studyRoom.length = 30.8
////studyRoom.width = 42.5
//
//studyRoom.calculateArea()

//
//class Person {
//    var name: String = ""
//    var age: Int = 0
//}
//
//var Person1 = Person()
//
//Person1.age = 42
//Person1.name = "John"
//
//class Calculator {
//    var num1: Int = 0
//    var num2: Int = 0
//
//    var sum: Int {
//        get {
//            num1 + num2
//        }
//        set(numberToModify) {
//            num1 = (numberToModify + 10)
//            num2 = (numberToModify + 10)
//        }
//    }
//}
//
//var obj = Calculator()
//obj.num1 = 11
//obj.num2 = 12
//
//obj.sum = 5
//
//print("Sum: ",obj.sum)

//class University {
//
//    var founded: Int = 0
//    var city: String = ""
//
//    static var name: String = ""
//
//    func study (){
//        print("I want to study in \(city)")
//    }
//}
//
//var obj = University()
//obj.founded = 1991
//obj.city = "City A"
//obj.study()
//
//var obj1 = University()
//obj1.founded = 1992
//obj1.city = "City B"
//obj1.study()
//
//University.name = "My University"

//// create a class
//class Hall {
//
//    var length = 0.0
//    var breadth = 0.0
//    var height = 0.0
//
//    // method to calculate area
//    func calculateArea() {
//        print("Area of Hall =", length * breadth)
//    }
//
//    // method to calculate volume
//    func calculateVolume() {
//        print("Volume of Hall =", length * breadth * height)
//    }
//    static func add(num1: Int, num2: Int) {
//        print("Sum is:\(num1+num2)")
//    }
//}
//
//var objH1 = Hall()
//
//
//Hall.add(num1: 12, num2: 13)

//class Marks {
//    var computer = 0
//
//    func checkEligibility (computer: Int) {
//        if (self.computer <= computer){
//            print("Not eligible")
//        }else{
//            print("Eligible")
//        }
//    }
//}
//
//var marksStudent = Marks()
//
//marksStudent.computer = 50
//marksStudent.checkEligibility(computer: 30)
//
//enum NameOfEnum {
//    case names
//}
//
enum Season {
    case spring , summer, autumn, winter
}



var tempString: String
var currentSeason: Season = Season.summer






















