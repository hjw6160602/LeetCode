//
//  46. 全排列.swift
//  BinaryTree
//
//  Created by 贺嘉炜 on 2021/2/25.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/permutations

import Foundation

class Permute {
    ///
    var nums: [Int] = []
    ///
    var path: [Int] = []
    ///
    var res: [[Int]] = [[]]
    
    var isVisited = [Bool]()
    
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return [[Int]]()
        }
        self.nums = nums
        self.isVisited = [Bool](repeating: false, count: nums.count)
        dfs(idx: 0)
        return res
    }
    
    private func dfs(idx : Int) {
        // 不能再往下搜索
        if idx == nums.count {
            res.append(path)
            return
        }
        // 枚举这一层所有可以做出的选择
        for (i, num) in nums.enumerated() where !isVisited[i] {

            path.append(num)
            isVisited[i] = true
            dfs(idx: i + 1)
            // 还原现场
            isVisited[i] = false
            path.removeLast()
        }
    }
}

func testPermute() {
    
}



//给定一个 没有重复 数字的序列，返回其所有可能的全排列。

//示例:
//输入: [1,2,3]
//输出:
//[
//  [1,2,3],
//  [1,3,2],
//  [2,1,3],
//  [2,3,1],
//  [3,1,2],
//  [3,2,1]
//]
