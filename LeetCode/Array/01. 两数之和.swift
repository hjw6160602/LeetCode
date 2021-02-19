//
//  01. 两数之和.swift
//  Array
//
//  Created by 江雪 on 2021/2/19.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
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
    
    func twoSumSwift(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            dict[num] = i
        }
        
        fatalError("No valid outputs")
    }
}


