//
//  01. Two Sum.swift
//  Math
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
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
    
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
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

func testTwoSum() {
    let nums = [-3,4,3,90]
    let target = 0
    let result = LeetCode.twoSum(nums, target)
    print(result)
}
