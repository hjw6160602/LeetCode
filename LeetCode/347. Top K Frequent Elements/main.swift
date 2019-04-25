//
//  main.swift
//  347. Top K Frequent Elements
//
//  Created by saidicaprio on 2019/4/24.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        let map = [Int: Int]() {
//
//        }
        return []
    }
}

class SolutionSwift {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for num in nums {
            guard let times = map[num] else {
                map[num] = 1
                continue
            }
            map[num] = times + 1
        }
        var keys = Array(map.keys)
        keys.sort() {
            let value1 = map[$0]!
            let value2 = map[$1]!
            return value1 > value2
        }
        return Array(keys[0..<k])
    }
}

let s = SolutionSwift()
let res = s.topKFrequent([3,3,2,2,1,1], 2)
print(res)

//let heap = Heap.init([7,5,6,4,2,1], capacity: 10)
//let heap = Heap.init([33,27,21,16,13,15,9,5,6,7,8,1,2], capacity: 20)
//heap.insert(22)

//let heap = Heap.init([33,27,21,16,13,15,19,5,6,7,8,1,2,12], capacity: 20)
//heap.removeMax()
//print(heap.array)

var array = Array.init(repeating: 0, count: 10000)
for index in 0..<10000 {
     let num: Int = Int(arc4random() % 100000) + 1
    array[index] = num
}
let heap = Heap.init(10)

for index in 0..<array.count {
    if array.count > heap.array[0] {
        
    }
    heap.insert(item)
}
print(heap.array[10])

