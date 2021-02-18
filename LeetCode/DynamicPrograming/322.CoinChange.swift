//
//  322. CoinChange.swift
//  DynamicPrograming
//
//  Created by SaiDiCaprio on 2021/2/4.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//  https://leetcode.com/problems/coin-change/

/**
 * 给定不同面额的硬币 coins 和一个总金额 amount
 * 编写一个函数来计算可以凑成总金额所需的最少的硬币个数
 * 如果没有任何一种硬币组合能组成总金额，返回 -1
 */

import Foundation

extension Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount != 0 else {
            return 0
        }
        var dp = Array.init(repeating: -1, count: amount + 1)
        for i in 1 ... amount {
            for coin in coins {
                if (coin == i) {
                    dp [i] = 1
                    break
                }
                if(coin < i && dp[i - coin] != -1) {
                    if (dp[i] == -1) {
                        dp[i] = dp[i - coin] + 1
                    } else {
                        dp[i] = min(dp[i], dp[i - coin] + 1)
                    }
                }
            }
        }
        return dp[amount]
    }
    
    func coinChange1(_ coins: [Int], _ amount: Int) -> Int {
        guard amount > 0 else {
            return 0
        }
        var dp = Array.init(repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        for i in 1 ... amount {
            for coin in coins {
                if(coin <= i) {
                    dp[i] = min(dp[i], dp[i - coin] + 1)
                }
            }
        }
        return dp[amount] > amount ? -1 : dp[amount]
    }
}

//coins = [1, 2, 5], amount = 11s

let s = Solution()
print(s.coinChange([1,2,5], 11))
//1:1
//2:1
//3:2
//4:2
//dp[i] = min(dp[i], dp[i - coin] + 1)
