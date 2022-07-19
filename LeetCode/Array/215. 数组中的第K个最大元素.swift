//
//  215. 数组中的第K个最大元素.swift
//  Array
//
//  Created by SaiDiCaprio on 2022/7/19.
//  Copyright © 2022 saidicaprio. All rights reserved.
//  https://leetcode.cn/problems/kth-largest-element-in-an-array

import Foundation


extension Solution {
//    452 ms 5.26%
//    18.2 MB 5.27%
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let sorted = nums.sorted()
        return sorted[nums.count - k]
    }
    
    func findKthLargestP1(_ nums: [Int], _ k: Int) -> Int {
        
        
        let sorted = nums.sorted()
        return sorted[nums.count - k]
    }
    
    private func _quickSort() {
        
    }
    
}

func test215FindKthLargest() {
    let x = LeetCode.findKthLargest([3,2,3,1,2,4,5,5,6], 4)
    print(x)
}

//给定整数数组 nums 和整数 k，请返回数组中第 k 个最大的元素。
//请注意，你需要找的是数组排序后的第 k 个最大的元素，而不是第 k 个不同的元素。
//
//示例 1: [64]
//输入: [3,2,1,5,6,4], k = 2
//输出: 5
//
//示例 2:
//输入: [3,2,3,1,2,4,5,5,6], k = 4
//输出: 4
//
//提示：
//1 <= k <= nums.length <= 104
//-104 <= nums[i] <= 104
