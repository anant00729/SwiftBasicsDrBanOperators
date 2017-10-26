//: Playground - noun: a place where people can play

import UIKit


// Basic Variable expicit declaration and type infference and type conversion

var sampleString = "Hello"
var world : String = "World"
var copySampleString = sampleString + world

print("The Full String is " + copySampleString)

let piOne = 3.144

var anyInteger : Int = 12
print("Min Value of Int : \(Int64.min)")
print("Max Value of Int : \(Int64.max)")

var pi2 : Float = 3.2232
var p13 : Double = 3.1212

print("the min value of Double is : \(Double.leastNormalMagnitude)")
print("the max value of Double is : \(Double.greatestFiniteMagnitude)")

print("the max float value is : \(Float.greatestFiniteMagnitude)")
print("the min float value is : \(Float.leastNormalMagnitude)")

var three : Double = 3.0
var two : Int = 2

var five = three + Double(two)

print("the converted value is : \(five)")
print(" 3 can be wrapped as : \(Int(3.14234))")

// Basic Operators

// < > <= >= == !=

// === !== checks the value is pointing to the same refference

// Conditional Statements


// Or Logical Operator

var income : Double = 12000.21
var gpa : Double = 3.4
var status = income>13000 && gpa < 3.5 ? "above" : "below"

print("the income is  \(status)")

// switch fallthrough

var checkString = "x"

switch checkString {
    case "x", "y":
        print("x")
        fallthrough
    case "z" :
        print("z")
        fallthrough
    case "a" :
        print("a")
        fallthrough
    default :
        print("this is the default value")
}


// Ranges in the switch

var score : Int = 120

switch score {
    case 100...121:
    print("the number is between 100...121")
    fallthrough
    case 120:
    print("the number is equal")
    fallthrough
    default:
    print("this is the default block")
}

// Basic Math Function

print("abs(-5) : \(abs(-5))")
print("ceil(5.5) : \(ceil(5.5))")
print("floor(5.4) : \(floor(5.4))")
print("pow(5,2) : \(pow(5,2))")
print("max(5,2) : \(max(5,2))")
print("min(5,2) : \(min(5,2))")
print("sqrt(25) : \(sqrt(25))")

// Strings

// to get the count of the string

var good = "good"
var morning = "morning"

var good_morning = good + morning

print("the lenght of the string is : \(good_morning.characters.count)" )

var index5 = good_morning.index(good_morning.startIndex, offsetBy : good_morning.characters.count-2);

print("\(good_morning[index5])")

print("the first character of string is : \(good_morning[good_morning.startIndex])")



//print("the last element of the string is : \(lastIndex)")
print("to check the string is empty or not : \(good_morning.isEmpty)")

// insert a string (Very Important)

good_morning.insert("A" , at: good_morning.startIndex)
print("the inserted String is \(good)")

print(good_morning)

good_morning.insert(contentsOf : " very " , at: good_morning.index(good_morning.startIndex, offsetBy : 1))

good_morning.insert(contentsOf: " ", at: good_morning.index(good_morning.startIndex,
                                                            offsetBy: 11))

print(good_morning)

// subString (Very Important)

let startIndexOfGoodMorning = good_morning.index(good_morning.startIndex , offsetBy : 2)
let lastIndex = good_morning.index(good_morning.startIndex, offsetBy : 6)
let rangeOfGoodMorning = startIndexOfGoodMorning..<lastIndex

print(good_morning.substring(with: rangeOfGoodMorning))

// replacing of the word from string (Very Important)

if let hereMatch = good_morning.range(of: "good"){
    good_morning.replaceSubrange(hereMatch, with: "night")
}
print(good_morning)

// Array for integer

var arrayInt = [Int]()

print("the is arrys values for isEmpty : \(arrayInt.isEmpty)")
arrayInt.append(2)
print(arrayInt)
arrayInt += [4,10]
print(arrayInt)
arrayInt.remove(at: 0)
print(arrayInt)
arrayInt.insert(420, at: arrayInt.count)
print(arrayInt)

arrayInt[0...2] = [1,2,3]
print(arrayInt)

var arrayOfFiveZeros = Array(repeating : 0 , count : 5)
print(arrayOfFiveZeros)

// combining of the array

for item in arrayInt{
    print("the values are : \(item)")
}
// if i want to see the both the index and the values of array
// then use following

//for (key,value) in arrayInt.enumerated() {
//    print(" Index : \(key) and the value is \(value)")
//}

// for in loop with where clause (no need to write if condition under for loop)

for i in 1...5 {
    print(i)
}


for i in 1...10 where i % 2 == 0 {
    print("the even numbers are \(i)")
}



// while loops

// printing odd numbers using while loops

print("printing odd numbers using while loops")

var loopWhileIterator : Int = 1
while loopWhileIterator <= 10 {
    if loopWhileIterator % 2 == 0{
        loopWhileIterator += 1
        continue
    }
    if loopWhileIterator == 7 {
        break
    }
    print(loopWhileIterator)
    loopWhileIterator += 1
} // printing 1 3 5

// do-while loop here is know as REPEAT-WHILE

//let numberRandom : UInt32 = arc4random_uniform(10)
//var guess : UInt32 = 0
//
//repeat{
//    print("\(guess)")
//    guess += 1
//
//}while(numberRandom != guess)
//
//print("the guees number is \(guess)")

// Dictionaries

var dictOne = [Int:String] ()

dictOne.isEmpty == true ? print("The Dictionary is empty") : print("The dictionary is not empty")

dictOne[1] = "Paul Smith"

print(dictOne[1]!)

var cust : [String:String] = ["100":"Anant", "101" : "Arnav"]

print("the size of the dictionary two is : \(cust.count)")

// always use if statement to check the wrapped value is having the correct data type

print(cust["100"]!)

cust["100"] = "Neelam"

print(cust["100"]!)

if let name = cust["100"] {
    print(name)
}

cust["100"] = nil


let height : Double = 123.21
let weight : Int = 72

let myData = (height,weight)

print("The height is : \(myData.0)")
print("The weight is : \(myData.1)")

let myData2 = (height: 134, weight: 72)

print("the Height is \(myData2.height)")
print("the Height is \(myData2.weight)")

// check the value to be nil

let politicalParty : String?
politicalParty = "KGB"

if (politicalParty != nil){
    let partyName = politicalParty!
    print("\(partyName)")
}

// other way of doing this is

if let someDummyValue = politicalParty {
    print("With a direct approach \(someDummyValue)")
}

let party = politicalParty ?? "No Party"

print(party)








    






























