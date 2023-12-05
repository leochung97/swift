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

// Day 7 - More Closures
// You can assign closures to variables, then call them later on.
// Closures can accept parameters and return values, like regular functions.
// You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
// If the last parameter to your function is a closure, you can use trailing closure syntax.
// Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
// If you use external values inside your closures, they will be captured so the closure can refer to them later.

// Day 8 - Structs
// In Swift, you can design your own data types called Structs; they can be given their own variables, constants, and functions
struct Sport {
    var name: String
    var olympic: Bool
    var olympicStatus: String {
        if olympic {
            return "\(name) is an Olympic Sport"
        } else {
            return "\(name) is not an Olympic Sport"
        }
    }
}
// var name: String is a stored property
// var olympicStatus: String is a computed property as the property runs code to find a value
var tennis = Sport(name: "Tennis", olympic: true)
print(tennis.name)
print(tennis.olympicStatus)

// You can set up property observers that will run code before or after property changes
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete.")
        }
    }
}

var progress = Progress(task: "Loading Data", amount: 0)
progress.amount = 30
progress.amount = 50
progress.amount = 100

// You can store methods inside structs as well (they are called methods but are still called with func)
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

var newYorkCity = City(population: 1000)
newYorkCity.collectTaxes()

// If a struct has a variable property but the instance of the struct was created as a constant, that property cannot be changed
// The struct is constant so all of its properties are also constant!
// Swift won't let you write methods that change properties unless you specifically request it using the mutating keyword
struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)

// Day 9 - Access Control, Lazy Properties, and Static

// Similar to Python, you can have an initializer in the struct that starts an object with certain properties
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "twostraws"
print(user.username)

// You can also use self to point to the instance of the struct that is currently being used
struct selfPerson {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
var selfPeep = selfPerson(name: "Leo")

// Lazy Properties - if we don't always need the property in a struct, you can label it as lazy so that it is only created when it is first accessed
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct lazyPerson {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = lazyPerson(name: "Ed")
ed.familyTree

// You can make Swift share specific properties and methods across all instances of the struct by declaring them as static
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let student1 = Student(name: "Ed")
let student2 = Student(name: "Taylor")
print("Student Class Size:", Student.classSize)

// You can use Private / Public keywords to prevent properties being read from outside of the struct
struct privatePerson {
    private var id: String
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My id nubmer is \(id)"
    }
}
let privateMan = privatePerson(id: "12345")
privateMan.identify()

// Day 10 - Classes
// Classes are similar to structs but they have five important differences
// 1. Classes never come with a memberwise initializer -> if you have properties in your class, you must ALWAYS create your own initializer
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Bark")
    }
}

var kami = Dog(name: "Kami", breed: "Yorkie")

// 2. You can create classes based on an existing class - it will inherit all the properties and methods of the original class and can add its own on top
// This is called class inheritance or subclassing (parent / super class vs. child class)
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Poodle Bark")
    }
}
// Note that Swift always make you call super.init() from child classes just in case the parent class does some important work when it's created

var poodleKami = Poodle(name: "Kami")
print(poodleKami.name, poodleKami.breed)

// Child classes can replace parent methods with their own methods - a process known as overriding
// You must use override func rather than just func when overriding a method - it stops you from overriding a method by accident and you'll get an error if you try to override something that doesn't exist on the parent class
print(kami.makeNoise(), poodleKami.makeNoise())

// You can also prevent classes from being inherited with the final keyword - no other class can inherit from it -> no overriding methods -> they must use the class the way it was written
final class finalDog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// 3. When you copy a struct, both the original and the copy are different instances - changing one won't change the other
// When you copy a class, both the original and the copy point to the same instance - changing one does change the other
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name, singerCopy.name)

// 4. Classes can have deinitializers - code that gets run when an instance of a class is destroyed
class destroyedPerson {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printgreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is dead.")
    }
}

for _ in 1...3 {
    let deadPerson = destroyedPerson()
    deadPerson.printgreeting()
}

// 5. If you have a constant class with a variable property, that property can be changed (vs. a struct where the property can't be changed because the struct is constant)
// Classes don't need the mutating keyword with methods that change properties - you only need that with structs
// If you want to prevent this from happening, you can make the property a constant using let

class newSinger {
    var name = "Kazuha"
}

let myCrush = newSinger()
myCrush.name = "Chaewon"
print(myCrush.name)

// Day 11 - Protocols and Extensions
// Protocols are a way of describing what properties and methods something must have
// You can tell Swift which types use that protocol - a process known as adapting or conforming to a protocol
protocol Identifiable {
    var id: String { get set }
}

struct protoUser: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("my ID is \(thing.id)")
}

var protoTest = protoUser(id: "LOLOL")

// Protocols can inherit from other protocols (protocol inheritance) - unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// Extensions allow you to add methods to existing types, to make them do things they weren't originally designed to do
extension Int {
    func squared() -> Int {
        return self * self
    }
}
var testNumber = 8
print(testNumber.squared())

// Note that Swift doesn't let you add stored properties in extensions -> you must use computed properties instead
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

// Protocols let you describe what methods something should have, but don’t provide the code inside.
// Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.
// Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let snakes = Set(["John", "Paul", "George", "Ringo"])

// NOTE: Swift's arrays and sets both conform to a protocol called Collection -> we can write an extension that will affect both
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
snakes.summarize()

// Protocol extensions can provide default implementations for our own protocol methods.
// This makes it easy for types to conform to a protocol, and allows a technique called “protocol-oriented programming” – crafting your code around protocols and protocol extensions.
protocol newIdentifiable {
    var id: String { get set }
    func identify()
}

extension newIdentifiable {
    func identify() {
        print("My ID is \(id)")
    }
}

struct protoExUser: newIdentifiable {
    var id: String
}
 
let twostraws = protoExUser(id: "twostraws")
twostraws.identify()

// Day 12 - Optionals
var age: Int? = nil
age = 38

// You must look inside the optional and see what's there -> this is called unwrapping
// A common way of unwrapping optionals is with if let syntax, which unwraps with a condition - if there was a value inside the optional then you can use it, but if there wasn't the condition would fail
var optionalName: String? = nil
if let unwrapped = optionalName {
    print("\(unwrapped.count) letters")
} else {
    print("Name is missing")
}

// An alternative is guard let, which also unwraps optionals -> guard let will unwrap an optional for you but if it finds nil inside, it expects you to exit the function, loop, or condition you used it in
// The major difference between if let and guard let is that your unwrapped optional remains usable after the guard code
func greet(_ optionalName: String?) {
    guard let unwrapped = optionalName else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)")
}
greet(optionalName)

// Swift lets you convert optionals to a non-optional type forcefully
let str = "5"
let num = Int(str)
// The above makes num an optional Int because you might have tried to convert a string like "Fish" rather than "5"
// Even though Swift isn't sure the conversion will work, you can see the code is safe so you can force unwrap the result by writing ! after Int(str)
let forceNum = Int(str)!
// This will force the num to be a regular Int rather than an Int? -> but if you're wrong, the code will crash
// You should only force unwrap if you're sure it's safe

// Implicitly unwrapped optionals might contain a value or they might be nil - however, unlike regular opt  ionals, you don't need to unwrap them in order to use them: you can use them as if they weren't optional at all
let implicitAge: Int! = nil
// You don't need if let or guard let to use implicitly unwrapped optinals - if you try to use them and they have no value -> they are nil
// Implicitly unwrapped optionals exist because sometimes it's fine if a variable starts as nil

// The nil coalescing operator unwraps an opotional and returns the value inside if there is one
// If there isn't a value - if the optional was nil - then a default value is used instead
// Either way, the result won't be optional: it will either be the value from inside the optional or the default value used as a backup
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let nilUser = username(for: 15) ?? "Anonymous"

// You can use the ? operator as a shortcut for using optionals
nilUser.first?.uppercased()

// There are two alternatives to try -> the first is try? which will change throwing functions into functions that return an optional
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh")
}

// The second alternative is try! which you can use when you know for sure that the function will not fail
// If the function does throw an error, your code will crash
try! checkPassword("secret")

// You can create an initializer that might work or might not (failable initializer) -> you can write these using init?() and return nil is something goes wrong
// The return value will then be optional of your type, for you to unwrap however you want

struct failPerson {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// Typecasting: Since Swift always needs to know the type of each variable, you can us as? keyword to return an optional -> it will be nil if the typecast failed or a converted type otherwise

class Animal { }
class Fish: Animal {
    func makeNoise() {
        print("Bloop!")
    }
}

class typeDog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), typeDog(), Fish(), typeDog()]
for pet in pets {
    if let dog = pet as? typeDog {
        dog.makeNoise()
    }
}

// Misc. Notes from SwiftUI
// Returning some View means even though we don't know what view type is going back, the compiler does
// Using some View is important for performance: SwiftUI needs to be able to look at the views we are showing and understand how they change -> it can correctly update the UI afterwards
// If SwiftUI doesn't have this extra information, it would be slow for SwiftUI to figure out what changed -> it would need to ditch everything and start again after every small change
// SwiftUI builds its data using ModifiedContent -> the View protocol has an associated type attached to it, which is Swift's way of saying that View by itself doesn't mean anything - we need to say exactly what kind of view it is

// You're not allowed to write a view like this:
struct ContentView: View {
    var body: View {
        Text("Hello, world!")
    }
}

// You can write a view like this:
struct ContentView: View {
    var body: Text {
        Text("Hello, world!")
    }
}
// Returning View makes no sense because Swift wants to know what's inside the view -> returning Text is fine because we've filled the hole and Swift knows what the view is
