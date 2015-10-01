//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

for index in 0..<100 {
    print(index)
}

func myFunction(name : String, nickname : String) {
    println("1-Hello \(name), ReHello \(nickname)")
}

func myFunction2 (name:String, nickname:String) -> (string:String,int:Int){
    let result = "2-Hello \(name), ReHello \(nickname)"
    return (result,10)
}

myFunction("Serigne","yok")
let (string,int) = myFunction2("Serigne","Yok")
println(int)

func RandomInt(min: Int, max: Int) -> Int {
    if max < min { return min }
    return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
}

let test = RandomInt(0, 1);
println(test)
