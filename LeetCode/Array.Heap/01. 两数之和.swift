//
//  01. 两数之和.swift
//  Array
//
//  Created by 江雪 on 2021/2/19.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/two-sum

import Foundation

// 给定一个target
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
    
    func twoSumPractice1(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, value) in nums.enumerated() {
            if let lastIndex = dict[target - value] {
                return [lastIndex, index]
            }
            dict[value] = index
        }
        return []
    }
    
}

//给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 的那 两个 整数，并返回它们的数组下标。
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
//你可以按任意顺序返回答案。

//示例 1：
             //0 1 2  3
//输入：nums = [2,7,11,15], target = 9
//输出：[0,1]
//解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1]

//示例 2：
//输入：nums = [3,2,4], target = 6
//输出：[1,2]

//示例 3：
//输入：nums = [3,3], target = 6
//输出：[0,1]

//提示：
//2 <= nums.length <= 103
//-109 <= nums[i] <= 109
//-109 <= target <= 109
//只会存在一个有效答案

