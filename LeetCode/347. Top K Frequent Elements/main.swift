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

let s = Solution()
let k = s.topKFrequent([1,1,1,2,2,3,3,3,3,3], 2)
print(k)
