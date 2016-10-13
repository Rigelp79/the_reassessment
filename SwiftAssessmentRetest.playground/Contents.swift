//: Playground - noun: a place where people can play

import UIKit

// Question 1
// Declare a variable integer and a constant string in swift.
var theInt : Int = 30
var string = String()
// Question 2
// What is type inference? Describe it in a comment below.
    // Type inference is when the complier assumes what you have written.
// Question 3
// Using a range, print out numbers 1 through 10.

// Question 4
// Given an array of Strings where each item is a planet, loop through the array and print each planet.

let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
for i in planets {
    print(i)
}
// Question 5
// Given the following if statement, reduce it to a ternary statement

// Try changing the value of x to test your cases!

var x = 4

if x > 3 {
    x += 1
} else {
    x += 2
}

// Question 6
/*
 Create a dictionary with 5 states and their state codes.
 
 Here are a few :
 
 Kentucky, KY
 Ohio, OH
 Missouri, MO
 Mississippi, MS
 New York, NY
 New Jersey, NJ
 Kansas, KS
 California, CA
 Colorado, CO
 */

var dictionary: [String : String] = [
    "Kentucky" : "KY",
    "Ohio" : "OH",
    "Missouri" : "MO",
    "Mississippi" : "MS",
    "California" : "CA"
]

// Question 7
// Using the dictionary from the previous question, create a function that will look up the state name for any state code in your dictionary.  Make sure codes that don't exist are handled.

// Question 8

 //Which statement will unwrap the optional before printing?
 
// 1. print("optionalVal! \(optionalVal)")
 //2. print("optionalVal? \(optionalVal)")
 //3. print("optionalVal: \(optionalVal?)")
// 4. print("optionalVal: \(optionalVal++)")
  //print("optionalVal: \(optionalVal!)")


// Question 9
/*
 Create a class called StopLight
 
 * It will have a stored property called lightColor
 * lightColor will be represented by the an enumeration LightColor.
 * Create an enumeration called LightColor for the states of a stop light
 * Create a method called changeLight that accepts a value of LightColor.
 
 */
StopLight {
    
    enum LightColor {
        case Red
        case Yellow
        case Green
    }
    
    var lightColor: LightColor = .Red
    
    func changeLight(color: LightColor) {
        lightColor = color
    }
}

var stopLight = StopLight()
stopLight.changeLight(color: .Green)
print(stopLight.lightColor)
stopLight.changeLight(color: .Yellow)
print(stopLight.lightColor)
stopLight.changeLight(color: .Red)
print(stopLight.lightColor)

// Question 10
// You are given a superclass Vehicle and a subclass Motorcycle.
// A motorcycle should have 2 wheels and a max of 2 passengers.
//Override the makeNoise method to print out "Beep" instead of "Honk"

// Vehicle class
class Vehicle {
    var numberOfWheels = 4
    var maxNumberOfPassengers = 4
    
    func information() {
        print("I have \(numberOfWheels) wheels and can carry \(maxNumberOfPassengers) people")
    }
    
    func makeNoise() {
        print("Honk")
    }
}

// Motorcycle class
class Motorcycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
        maxNumberOfPassengers = 2

    }
    
    override func makeNoise() {
        print("Beep")
    }

}
