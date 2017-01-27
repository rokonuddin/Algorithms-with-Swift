//: Playground - noun: a place where people can play

import UIKit

class BinarySearch {
    
    static func rank(key: Int, a: [Int]) -> Int {
        var low = 0
        var high = a.count - 1
        
        while low <= high {
            let mid = low + (high - low)/2
            print(mid)
            if key < a[mid] {
                high = mid - 1
            } else if key > a[mid] {
                low = mid + 1
            } else {
                return mid
            }
        }
        return -1
    }
}

let whitelist = [1, 5, 6, 7, 8, 10]

BinarySearch.rank(key: 8, a: whitelist)


//low = 0, high = 5, mid = 2 -> low = 3, high = 5, mid = 4
