//
//  47. 礼物的最大价值.swift
//  DynamicPrograming
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/li-wu-de-zui-da-jie-zhi-lcof/

import Foundation

extension Solution {
    func maxValue(_ grid: [[Int]]) -> Int {
        guard grid.count != 0 && grid[0].count != 0 else{
            return 0
        }
        
        let rows = grid.count, cols = grid[0].count
        var dp = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        
        dp[0][0] = grid[0][0]
        
        for col in 1..<cols {
            dp[0][col] = dp[0][col - 1] + grid[0][col]
        }
        for row in 1..<rows {
            dp[row][0] = dp[row - 1][0] + grid[row][0]
        }
        
        for row in 1..<rows {
            for col in 1..<cols {
                dp[row][col] = max(dp[row][col - 1], dp[row - 1][col])  + grid[row][col]
            }
        }
        
        return dp[rows - 1][cols - 1]
    }
}

func testMaxValue() {
//    let array = [
//        [13,1,4],
//        [5,1,7,6]
//    ]
//
    let array = [[1,2,5],[3,2,1]]
    let x = LeetCode.maxValue(array)
    print(x)
}
