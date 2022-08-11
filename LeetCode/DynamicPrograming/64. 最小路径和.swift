//
//  64. 最小路径和.swift
//  DynamicPrograming
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode.cn/problems/minimum-path-sum

import Foundation

extension Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let m = grid.count, n = grid[0].count
        var dp = Array(repeating: Array.init(repeating: 0, count: m + 1),
                       count: n + 1)
        for i in 1...m {
            for j in 1...n {
                
                dp[i][j] =  min(dp[i][j-1], dp[i-1][j]) + grid[i-1][j-1]
            }
        }
        return dp[m][n]
        
    }
}

func test64MinPathSum() {
    let grid = [[1,3,1],[1,5,1],[4,2,1]]
    let x = LeetCode.minPathSum(grid)
    print(x)
}
//给定一个包含非负整数的 m x n 网格 grid ，请找出一条从左上角到右下角的路径，使得路径上的数字总和为最小。
//
//说明：每次只能向下或者向右移动一步。
//
//示例 1：
//输入：grid = [[1,3,1],[1,5,1],[4,2,1]]
//输出：7
//解释：因为路径 1→3→1→1→1 的总和最小。
//
//示例 2：
//输入：grid = [[1,2,3],[4,5,6]]
//输出：12
//
//
//提示：
//m == grid.length
//n == grid[i].length
//1 <= m, n <= 200
//0 <= grid[i][j] <= 100
