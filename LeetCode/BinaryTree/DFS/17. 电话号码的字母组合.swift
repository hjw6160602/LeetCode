//
//  17. 电话号码的字母组合.swift
//  BinaryTree
//
//  Created by SaiDiCaprio on 2021/2/23.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/letter-combinations-of-a-phone-number

import Foundation

class LetterCombination {

    var digits: String = ""
    
    let numberToStr = ["abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    
    var combinations: [String] = []
    
    var combination: String = ""
    
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else {
            return [String]()
        }
        self.digits = digits
        dfs(0)
        return combinations
    }
    
    // 深度优先搜索 正在搜索第idx层
    private func dfs(_ index: Int) {
        // 已经进入到最后一层了，不能再深入
        if combination.count == digits.count {
            // 得到了一个正确的解
            combinations.append(combination)
            return
        }
        
        // 先枚举这一层可以做的所有选择
        let currentStr = fetchCurrentStr(at: index)
        
        for char in currentStr {
            combination.append(char)
            dfs(index + 1)
            combination.removeLast()
        }
        
    }
    private func fetchCurrentStr(at index: Int) -> String {
        guard index >= 0 && index < digits.count else {
            fatalError("Invalid index")
        }
        
        let currentDigitChar = digits[digits.index(digits.startIndex, offsetBy: index)]
        
        guard let currentDigit = Int(String(currentDigitChar)), currentDigit >= 0, currentDigit < numberToStr.count else {
            fatalError("Invalid digits")
        }
        
        return numberToStr[currentDigit]
    }
    
}

//给定一个仅包含数字 2-9 的字符串，返回所有它能表示的字母组合。答案可以按 任意顺序 返回。
//给出数字到字母的映射如下（与电话按键相同）。注意 1 不对应任何字母。

//示例 1：
//
//输入：digits = "23"
//输出：["ad","ae","af","bd","be","bf","cd","ce","cf"]

//示例 2：
//
//输入：digits = ""
//输出：[]

//示例 3：
//
//输入：digits = "2"
//输出：["a","b","c"]
