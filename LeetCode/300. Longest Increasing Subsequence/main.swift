//
//  main.swift
//  300. Longest Increasing Subsequence
//
//  Created by saidicaprio on 2019/4/22.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var res = 1
        var dp = Array.init(repeating: 1, count: nums.count)
        
        for i in 0 ..< nums.count {
            for j in 0 ..< i {
                if nums[j] < nums[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            res = max(res, dp[i])
        }
        return res
    }
}

let nums = [10,9,2,5,3,7,101,18]//[2,3,7,101]
let s = Solution()
print(s.lengthOfLIS(nums))