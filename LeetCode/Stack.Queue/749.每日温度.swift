//
//  749.每日温度.swift
//  Stack.Queue
//
//  Created by 贺嘉炜 on 2021/2/25.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/daily-temperatures

import Foundation

extension Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        guard T.count > 0 else {
            return []
        }
        var res = Array(repeating: 0, count: T.count)
        // 这里采用一个栈来找到 左边和右边第一个比ta大的数
        var stack = [Int]()
        
        for idx in 0..<T.count {
            // 这里应该是大于 不能是大于等于
            while !stack.isEmpty && T[idx] > T[stack.last!] {
                let topIdx = stack.last!
                res[topIdx] = idx - topIdx
                _ = stack.popLast()
            }
            stack.append(idx)
        }
        return res
    }
    
    func dailyTemperature2(_ T: [Int]) -> [Int] {
        guard T.count > 0 else {
            return []
        }
        /**
         * 如果 T[i] < T[j] 那么res[i] = j - i, i--
         * 如果 T[i] == T[j]
         */
        var res = Array(repeating: 0, count: T.count)
        for i in (0...T.count-2).reversed() {
            var j = i + 1
            while true {
                if T[i] < T[j] {
                    res[i] = j - i
                    break
                } else if res[j] == 0 {
                    res[i] = 0
                    break
                } else if T[i] == T[j] {
                    res[i] = res[j] + j - i
                    break
                }
                j = j + res[j]
            }
        }
        return res
    }
}

func testDailyTemperatures() {
    let res = LeetCode.dailyTemperature2([73, 74, 75, 71, 69, 72, 76, 73])
    print(res)
}

//  请根据每日 气温 列表，重新生成一个列表。
//  对应位置的输出为：要想观测到更高的气温，至少需要等待的天数。
//  如果气温在这之后都不会升高，请在该位置用 0 来代替。
//
//  例如，给定一个列表 temperatures = [73, 74, 75, 71, 69, 72, 76, 73]，
//  你的输出应该是 [1, 1, 4, 2, 1, 1, 0, 0]。
//
//  提示：气温 列表长度的范围是 [1, 30000]。每个气温的值的均为华氏度，都是在 [30, 100] 范围内的整数。
//
//  通过次数135,058提交次数204,436
