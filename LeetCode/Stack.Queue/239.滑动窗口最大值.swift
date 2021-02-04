//
//  239.滑动窗口最大值.swift
//  Stack.Queue
//
//  Created by SaiDiCaprio on 2021/2/4.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
// https://leetcode-cn.com/problems/sliding-window-maximum/

import Foundation

extension Solution {
    
    // 超出时间限制
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        if k == 1 {
            return nums
        }
        let maxCount = nums.count - k + 1 // 8 - 3 + 1 = 6
        var maxNums: [Int] = []
        for index in 0..<maxCount {
            let r = index + k
            let slide = nums[index..<r]
            let max = slide.max()
            maxNums.append(max!)
        }
        return maxNums
    }
}

// 给你一个整数数组 nums，有一个大小为 k 的滑动窗口从数组的最左侧移动到数组的最右侧。你只可以看到在滑动窗口内的 k 个数字。滑动窗口每次只向右移动一位。
//
// 返回滑动窗口中的最大值。
//
// 示例 1：
//
// 输入：nums = [1,3,-1,-3,5,3,6,7], k = 3
// 输出：[3,3,5,5,6,7]
// 解释：
// 滑动窗口的位置                   最大值
// ---------------               -----
// [1  3  -1] -3  5  3  6  7       3
//  1 [3  -1  -3] 5  3  6  7       3
//  1  3 [-1  -3  5] 3  6  7       5
//  1  3  -1 [-3  5  3] 6  7       5
//  1  3  -1  -3 [5  3  6] 7       6
//  1  3  -1  -3  5 [3  6  7]      7
// 示例 2：
//
// 输入：nums = [1], k = 1
// 输出：[1]
// 示例 3：
//
// 输入：nums = [1,-1], k = 1
// 输出：[1,-1]
// 示例 4：
//
// 输入：nums = [9,11], k = 2
// 输出：[11]
// 示例 5：
//
// 输入：nums = [4,-2], k = 2
// 输出：[4]
