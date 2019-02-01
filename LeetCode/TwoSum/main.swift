//
//  main.swift
//  TwoSum
//
//  Created by saidicaprio on 2019/2/1.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count - 1 {
            let a = nums[i]
            print("a: " + String(a))
            for j in i + 1 ..< nums.count {
                let b = nums[j]
                print("b: " + String(b))
                if a + b == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        for i in 0 ..< nums.count {
            if let j = dict[target - nums[i]] {
                 return [j, i];
            } else {
                dict[nums[i]] = i;
            }
        }
        return [0, 0];
    }
}

let nums = [-3,4,3,90]
let target = 0
let result = Solution2().twoSum(nums, target)
print(result)
