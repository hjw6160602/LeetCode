//
//  72. Edit Distance.swift
//  String
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

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

extension Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        
        return 0
    }
}

//let s = Solution()
//print(s.minDistance("horse", "ros"))
