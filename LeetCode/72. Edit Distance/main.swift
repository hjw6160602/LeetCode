//  https://leetcode.com/problems/edit-distance/
//  main.swift
//  72. Edit Distance
//
//  Created by saidicaprio on 2019/5/22.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

// 给定两个单词 word1 和 word2，计算出将 word1 转换成 word2 所使用的最少操作数

/**
 * Input: word1 = "horse", word2 = "ros"
 * Output: 3
 * Explanation:
 * horse -> rorse (replace 'h' with 'r')
 * rorse -> rose (remove 'r')
 * rose -> ros (remove 'e')
 
 * Input: word1 = "intention", word2 = "execution"
 * Output: 5
 * Explanation:
 * intention -> inention (remove 't')
 * inention -> enention (replace 'i' with 'e')
 * enention -> exention (replace 'n' with 'x')
 * exention -> exection (replace 'n' with 'c')
 * exection -> execution (insert 'u')
 */

class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        
        
    }
}

let s = Solution()
print(s.minDistance("horse", "ros"))

