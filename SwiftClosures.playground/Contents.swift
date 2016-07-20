//: Playground - noun: a place where people can play

import UIKit

//: First Class

// assing to var or constant 
let f = {(x: Int) -> Int in
  return x + 42
}

f(9)
f(50)

// Closures in an array (or a dictionary, or a set, etc)
let closures = [f,
                {(x: Int) -> Int in return x * 2},
                {x in return x - 8},
                {x in x * x},
                {$0 * 42}]
for num in closures {
    num(13)
}

// functions and closures are the same
func foo(x: Int) -> Int {
    return 42 + x
}

let bar = {(x: Int) -> Int in
    42 + x
}

// create functions, add them to an array and call them
func curly(n: Int) -> Int {
    return n * n
}

func larry(x: Int) -> Int {
    return x * (x + 1)
}

func moe(m: Int) -> Int {
    return m * (m - 1) * (m - 2)
}

var stooges = [curly, larry, moe]
stooges.append(bar)

for stooge in stooges {
    stooge(42)
}

//: Typealias

typealias Integer = Int

let z: Integer = 42
let zz: Int = 42


typealias IntToInt = (Int)-> Int

typealias IntMaker = (Void)-> Int

// Variable Capture at last!!!

func makeCounter() -> IntMaker {
    var n = 0
    
    // functions within functions
    func adder() -> Int {
        n + n + 1
        return n
    }
    
    return adder
}

let counter1 = makeCounter()
let counter2 = makeCounter()























