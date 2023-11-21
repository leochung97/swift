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

// Day 4 - Loops
let count = 1...10
for number in count {
    print("number is \(number)")
}

for _ in 1...5 {
    print("play")
}

var number =  1
while number <= 20 {
    print(number)
    number += 1
}

// You can also use a repeat loop but it's the same function as while loops with the cluase at the end
// Because the condition comes at the end of the repeat loop, you will always execute the code block once whereas while loops will check first on whether to run the code block at all
var newNumber = 1
repeat {
    print(newNumber)
    newNumber += 1
} while newNumber <= 10

var countDown = 10
while countDown >= 0 {
    print(countDown)
    countDown -= 1
    
    if countDown == 4 {
        print("Early break")
        break
    } else if countDown % 3 == 0 {
        continue
    }
}

// You can skip loops using continue

// Day 5 - Functions
func printHelp() {
    let message = """
Welcome to MyApp!
Run this app inside a directory of images and MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()

// You can have typing similar to python

func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)

// You can label arguments in Swift functions
func sayHello(to name: String) {
    print("Hello, \(name)")
}
sayHello(to: "Taylor")

// You can also omit argument names altogether
func greet(_ person: String) {
    print("Hello, \(person)")
}
greet("Leo")

// Similar to Python, you can set default paramters with = in the argument parameters
func greetNicely(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Fuck you, \(person)")
    }
}
greetNicely("bitch", nicely: false)

// Variadic functions are functions that accept any number of parameters of the same type
func variadicSquare(numbers: Int...) {
    for num in numbers {
        print("\(num) squared is \(num * num)")
    }
}
variadicSquare(numbers: 1, 2, 3, 4, 5)

enum PasswordError: Error {
    case obvious
}

// Error Handling involves throw -> try
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// Do starts a section of codce that might cause problems -> try is used before every function that might throw an error -> catch lets you handle errors
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

// Note that all parameters passed into a Swift function are constants, so they caannot be changed. However, if you want, you can pass in one or more parameters as inout, which means they can be changed insdie your function, and those changes would reflect in the original value outside the function

func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 1
doubleInPlace(number: &myNum)
print(myNum)

// Day 6 - Basic Closures
// Swift lets you use functions like any other type -> you can create a function and assign it to a variable -> these are called closures
let driving = {
    print("I'm driving in my car")
}
driving()

// Closures don't have a name or space to write any parameters -> you must pass them using in
let drivingIn = { (place: String) -> String in
    return "I'm driving in my car to \(place)"
}
drivingIn("London")
let newMessage = drivingIn("NYC")

// If you want to pass a closure into a function so that it can be run inside that function, you can specify the parameter type as () -> Void
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I've arrived")
}
travel(action: driving)

// If the last parameter is a closure, Swift allows you to use special syntax called trailing closure syntax - rather than pass in your closure as a parameter, you pass it directly after the function inside braces
travel() {
    print("I'm driving in my car")
}

// You can also just get rid of the parentheses
travel{
    print("I'm driving in my car")
}

// A closure you pass into a function can also accept its own parameters
func newTravel(action: (String) -> Void) {
    print("I'm getting ready to go!!!")
    action("London")
    print("I have arrived!")
}

newTravel{(place: String) in
    print("I'm going to \(place).")
}

// You can replace Void with any data type to enforce a data type the closure must return
// You can also use shorthand \($0) for closures
newTravel {
    "I'm going to \($0) in my car"
}

// With multiple closures, you can accept numbered parameters shorthand ($0) / ($1)
func newerTravel(action: (String, Int) -> String) {
    print("I'm ready to go!")
    let description = action("NYC", 60)
    print(description)
    print("I've arrived")
}

newerTravel {
    "I'm going to \($0) at \($1) miles per hour"
}

// Similar to how you pass a closure to the function, you can get closures returned from a function too
func newestTravel() -> (String) -> (Void) {
    return {
        print("I'm going to \($0)")
    }
}
let newestResult = newestTravel()
newestResult("Canada")

// It's also technically allowable though not recommended to return the value directly
let newestResult2 = newestTravel()("Ontario")

// If you use any external values inside your closure, Swift will capture them
// The values will modified even if they don't exist anymore
func captureClosure() -> (String) -> (Void) {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let captureResult = captureClosure()
captureResult("NYC")
captureResult("NYC")
captureResult("NYC")

