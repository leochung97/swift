import Cocoa

// Day 1 - Setting variables / constants
// Variables are created using var
var greeting = "Hello, playground"
greeting = "Then he tapped a sign saying \"Believe\" and walked away."
var multiLineString = 
"""
This is a multi
line string
You can split it through triple quotations
"""

// Constants are created using let
let const = "Hello, const"

// Common String Methods
print(greeting.count)
print(multiLineString.uppercased())
print("This is the greeting message: \(greeting)")
print(greeting.hasPrefix("Then he tapped"))
print(greeting.hasSuffix("playground"))

// Numbers
var score = 100_000_000
score *= 5
score /= 5
print(score.isMultiple(of: 10))
print(100.isMultiple(of: 10))

// Doubles are double-point floats
var double = 10.0005
// Swift is statically-typed -> you cannot change a variable's type after declaration
// Floats cannot be added onto integers and vice-versa

// Day 2 - String Interpolation / Booleans
var gameOver = false
gameOver.toggle()
gameOver = !gameOver

let firstPart = "Hello, "
let secondPart = "world!"
let greetings = firstPart + secondPart
let message = "This is the greeting message: \(greetings)"

// Day 3 - Arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
print(beatles[0])
print(numbers[1])
print(temperatures[2])
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")
// Note that you can only add the SAME data type to the array -> i.e., the array must contain ONLY strings or ONLY ints or ONLY floats

// You can create a specific array with Array<Type>() or [String]()
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// Dictionaries are made with hard brackets and not curly brackets
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
// Dictionaries will warn you that the dictionary may not actually contain the data and express that the expression implcitly coerced a data type
// The reason for this is that it doesn't want to return an error if there is no data but it will warn you that it is a possibility
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])
// count and removeAll() works for dictionaries as well as arrays

// There are also sets in Swift
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
var peoples = Set<String>()
// Similar to Python, we use insert instead of append for sets
peoples.insert("Denzel Washington")
peoples.insert("Tom Cruise")
peoples.insert("Nicolas Cage")
peoples.insert("Samuel L Jackson")
// You can check if a set has a value with .contains()
peoples.contains("Tom Cruise")
// You can also use count and sorted on sets to return a sorted array containing the set's items

// You can use enums to create a set of named values - this is more efficient and safer
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// You can also write enums using a comma to separate values instead of writing case every time
enum Weekdays {
    case monday, tuesday, wednesday, thursday, friday
}
var days = Weekdays.monday
day = .tuesday
day = .friday

// Type annotations allow us to be explicit in our type declaration
let surname: String = "Lasso"
var typeScore: Int = 0
var newTypeScore: Double = 0
var isAuthenticated: Bool = true
var arrayType: [String] = ["Red", "Fearless"]
var dictionaryType: [String: String] = ["id": "@twostraws"]
var setType: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// if statements
if surname == "Lasso" {
    print("true")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

// You can check whose name comes in alphabetical order with <, > signs
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
} else {
    print("Idk")
}

let bitch = "Taylor Swift"
if bitch != "Not Taylor" {
    print("Welcome, \(bitch)")
}

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if b is true")
} else {
    print("Nothing is true")
}

if a && b || a {
    print("Both a and b are true")
    if b {
        print("We can stack if statements")
    }
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
