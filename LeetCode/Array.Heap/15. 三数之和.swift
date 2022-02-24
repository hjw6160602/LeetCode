//
//  15. 三数之和.swift
//  Array
//
//  Created by SaiDiCaprio on 2021/2/24.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/3sum

import Foundation

extension Solution {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        guard nums.count > 2 else { return [] }
        
        var res: [[Int]] = []
        //0. 先排序
        let sortedNums = nums.sorted()
//        print(sortedNums)
//        let lastIdx = nums.count - 2
        let lastRight = nums.count - 1
        for index in 0..<nums.count - 2 {
            // 取出index的重复操作 如果 当前index指针的值和上一个元素的值相等
            if index > 0 && sortedNums[index] == sortedNums[index - 1] {
                // 直接跳过
                continue
            }
            var l = index + 1
            var r = lastRight
            let remian = -sortedNums[index]
            while l < r {
                let sumLr = sortedNums[l] + nums[r]
                if sumLr == remian {
                    res.append([index, l, r])
                    l += 1
                    r -= 1
                    // 去除重复操作
                    while l < r && sortedNums[l] == sortedNums[l + 1] {
                        l += 1
                    }
                    while l < r && sortedNums[r] == sortedNums[r - 1] {
                        r -= 1
                    }
                } else if (sumLr < remian) {
                    l += 1
                } else {
                    r -= 1
                }
            }
        }
        return res
    }
    
    func threeSumP1(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        
        var res: [[Int]] = []
        //0. 先排序
        let sortedNums = nums.sorted()
        
        for i in 0..<nums.count-2 {
            // 排除连续相等的重复的情况
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }
            var l = i + 1, r = nums.count - 1
            let remain = -sortedNums[i]
            while r > l {
                let sum = sortedNums[l] + sortedNums[r]
                if sum < remain {
                    l += 1
                } else if sum > remain {
                    r -= 1
                } else {
                    let part = [sortedNums[i], sortedNums[l], sortedNums[r]]
                    res.append(part)
                    l += 1
                    r -= 1
                }
            }
        }
        return []
    }
}

func testThreeSum() {
    let res = LeetCode.threeSum([-1,0,1,2,-1,-4])
    print(res)
}

// 给你一个包含 n 个整数的数组 nums
// 判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组
//
// 注意：答案中不可以包含重复的三元组

//示例 1：
//输入：nums = [-1,0,1,2,-1,-4]
//输出：[[-1,-1,2],[-1,0,1]]
//示例 2：

//输入：nums = []
//输出：[]

//示例 3：
//输入：nums = [0]
//输出：[]
