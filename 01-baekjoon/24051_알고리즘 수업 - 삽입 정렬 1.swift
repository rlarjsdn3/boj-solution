import Foundation

func insertionSort(_ array: inout [Int], count k: Int) -> Int {
    var count: Int = 0
    let length: Int = array.count
    for i in 1..<length {
        let key: Int = array[i]
        var loc: Int = i - 1
        
        while 0 <= loc && array[loc] > key {
            array[loc + 1] = array[loc]
            loc -= 1
            count += 1

            if count == k {
                return array[loc + 1]
            }
        }
        
        if loc+1 != i {
            array[loc+1] = key
            count += 1
        }
    }
    
    return -1
}

let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]
var array: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

print(insertionSort(&array, count: k))
