import UIKit
import Foundation

// MARK: - Sort
var names = [ "Mamun", "Maruf", "Toha", "Shehab", "Abdullah"]
names.sort()

//print(names)

names.sort(by: <)

//print(names)

var values = [4, 3, 5, 1, 7, 2]

//values.sort()

values.sort(by: >)

//print(values)

let sortedNames = names.sorted { (parameter1, parameter2) -> Bool in
    
    //print(parameter1, parameter2)
    return parameter1 < parameter2
}

//print(sortedNames)


let storedNameWithCharacterCount = names.sorted{ (par1, par2) -> Bool in
    return par1.count < par2.count
    
}

//print(storedNameWithCharacterCount)


// MARK: - ForEach

names.forEach { name in
    //print(name)
}


names.enumerated().forEach { (tup) in
   // print(tup.element + "\(tup.offset)")
}

var namesOfUsers = [ "Mamun", "Maruf", "Toha", "Shehab", "Abdullah"]
namesOfUsers.enumerated().forEach { (num, val) in
    //print(num,val)
}


// MARK: - Map
var simpleNumbers = [1, 2, 3, 4, 5]

let squareNums = simpleNumbers.map { (number) -> Int in
   return number * number
}

//print(squareNums)



// return collections of [T.type]
let countCharcter = namesOfUsers.map { (name) -> Int in
    return name.count
}

//print(countCharcter)


////var customNames = [ "Mamun", "Maruf", "Toha", "Shehab", "Abdullah"]
///
// MARK: - filter

let filterNames = namesOfUsers.filter{ (name) -> Bool in
    return name.count > 5
}

//print(filterNames)



// MARK: - compactMap
let stringNumbers = ["1", "2", "3", "four", "5"]
// Use compactMap to convert the strings to integers, filtering out any nil values
let numbers = stringNumbers.compactMap { (num) -> Int? in
    return Int(num)
}
//print(numbers)



let optionalNumbers: [Int?] = [1, nil, 3, nil, 5]
let validNumbers = optionalNumbers.compactMap { num -> Int? in
    return num
}
//print(validNumbers)




// MARK: - reduce
var testReduceNumbers = [1, 2, 3, 4, 5]

let afterOperaton = testReduceNumbers.reduce(0) { partialResult, value in
    return partialResult + value
}
//print(afterOperaton)

let numbersOfArray = [5, 2, 9, 1, 8]
let maxNumber = numbersOfArray.reduce(-999) { result, value -> Int in
    return max(result, value)
}
//print(maxNumber)


let arrayOfArrays = [[1, 2, 3], [4, 5], [6, 7, 8]]
let flattenedArray = arrayOfArrays.reduce([]) { (result, subarray) in
    return result + subarray
}

//print(flattenedArray)

// MARK: - Drop

let originalNum = [1,2,3,4,5]

func checkEven(val: Int) -> Bool{
    return val % 2 == 0
}

var dropNum = originalNum.drop(while: checkEven)

//print(dropNum)


// MARK: - split
let text = "172.101"
let parts = text.split(separator: ".")
//print(parts)


// MARK: - passing function as parameter

var containsNames = ["Maruf", "Mamun","Mahmud", "Abdullah", "Shakil"]

func longerThan6(val: String) -> Bool {
    return val.count > 6
}

let longName = containsNames.first(where: longerThan6)
//print(longName ?? "")



// Chaining
//let firstM = containsNames.sorted().first { val1 -> Bool in
//    return val1.lowercased().contains("m")
//}
//print(firstM ?? "")



let firstM = containsNames
    .sorted()
    .first {$0.lowercased().contains("m")}
print(firstM ?? "")
