//
//  5.最长回文子串.swift
//  String
//
//  Created by SaiDiCaprio on 2022/1/21.
//  Copyright © 2022 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/longest-palindromic-substring

import Foundation

extension Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        
        let sChars = Array(s)
        
        var maxLen = 0, start = 0
        
        for i in 0..<sChars.count {
            // 总长度为奇数情况的搜索
            searchPalindrome(sChars, i, i, &start, &maxLen)
            // 总长度为偶数情况的搜索
            searchPalindrome(sChars, i, i + 1, &start, &maxLen)
        }
        
        return String(sChars[start..<start + maxLen])
    }
    
    private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int,
                                  _ start: inout Int,
                                  _ maxLen: inout Int) {
        var l = l, r = r
        
        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            l -= 1
            r += 1
        }
        
        if maxLen < r - l - 1 {
            start = l + 1
            maxLen = r - l - 1
        }
    }
}

func testLongestPalindrome() {
    
    let x = Solution.shared.longestPalindrome("babad")
    print(x)
}

//给你一个字符串 s，找到 s 中最长的回文子串。

//示例 1：
//输入：s = "babad"
//输出："bab"
//解释："aba" 同样是符合题意的答案。

//示例 2：
//输入：s = "cbbd"
//输出："bb"

//示例 3：
//输入：s = "a"
//输出："a"

//示例 4：
//输入：s = "ac"
//输出："a"

//提示：
//1 <= s.length <= 1000
//s 仅由数字和英文字母（大写和/或小写）组成
