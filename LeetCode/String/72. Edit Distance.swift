//
//  72. Edit Distance.swift
//  String
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

extension Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        guard word1.count > 0 else { return word2.count }
        guard word2.count > 0 else { return word1.count }
        
        let chars1 = [Character](" " + word1), chars2 = [Character](" " + word2)
        // 构造一个 rows + 1 行 cols + 1列 的二维dp 数组
        let rows = word1.count, cols = word2.count
        var dp = Array(repeating: Array(repeating: 0, count: cols + 1),
                       count: rows + 1)
        
        // 为第0行和 第0列赋值
        for i in 1...rows { dp[i][0] = i }
        for j in 1...cols { dp[0][j] = j }
        
        // 打印二维数组
        for i in 0...rows { print(dp[i]) }
        
        // 闭区间为二维dp数组赋值
        for i in 1...rows {
            for j in 1...cols {
                // 动态转移方程：
                // 如果当前字符 相等 那么dp等于其左上角：dp[i - 1][j - 1]
                guard chars1[i] != chars2[j] else {
                    dp[i][j] = dp[i - 1][j - 1]
                    continue
                }
                // 来到这里证明肯定不相等
                // 左边：dp[i][j - 1] 上面：dp[i - 1][j]
                dp[i][j] = min(dp[i - 1][j - 1], dp[i][j - 1], dp[i - 1][j]) + 1
            }
        }
        
        // 打印二维数组
        print(" ")
        for i in 0...rows { print(dp[i]) }
        
        return dp[rows][cols]
    }
    
//    12 ms 66.67%
//    15.1 MB 89.39%
//    1146 / 1146
    func minDistanceP1(_ word1: String, _ word2: String) -> Int {
        guard word1.count > 0 else { return word2.count }
        guard word2.count > 0 else { return word1.count }
        
        let chars1 = [Character](" " + word1), chars2 = [Character](" " + word2)
        // 构造一个 rows + 1 行 cols + 1列 的二维dp 数组
        let rows = word1.count, cols = word2.count
        var dp = Array(repeating: Array(repeating: 0, count: cols + 1),
                       count: rows + 1)
        
        // 为第0行和 第0列赋值
        for i in 1...rows { dp[i][0] = i }
        for j in 1...cols { dp[0][j] = j }
        
        // 闭区间为二维dp数组赋值
        for i in 1...rows {
            for j in 1...cols {
                // 动态转移方程：
                // 如果当前字符 相等 那么dp等于其左上角：dp[i - 1][j - 1]
                guard chars1[i] != chars2[j] else {
                    dp[i][j] = dp[i - 1][j - 1]
                    continue
                }
                // 来到这里证明肯定不相等
                // 左边：dp[i][j - 1] 上面：dp[i - 1][j]
                dp[i][j] = min(dp[i - 1][j - 1], dp[i][j - 1], dp[i - 1][j]) + 1
            }
        }
        return dp[rows][cols]
    }
}

func testMinDistance() {
    let x = Solution.shared.minDistance("intention", "execution")
    print(x)
}

//         r  o  s
//     [0, 1, 2, 3]
//   h [1, 1, 2, 3]
//   o [2, 2, 1, 2]
//   r [3, 2, 2, 3]
//   s [4, 3, 3, 2]
//   e [5, 4, 4, 3]

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
