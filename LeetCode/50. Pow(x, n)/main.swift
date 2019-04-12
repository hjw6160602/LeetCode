//  https://leetcode.com/problems/powx-n/description/
//  main.swift
//  50. Pow(x, n)
//
//  Created by saidicaprio on 2019/3/9.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

// -100.0 < x < 100.0
// n in range [−231, 231 − 1]

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var res: Double = 1
        if n > 0 {
            print("res: " + String(res))
            print("n: " + String(n) )
            res = myPow(x, n - 1) * x
        } else if n < 0 {
            res = myPow(x, n + 1) / x
        }
        
        return res;
    }
}

let s = Solution()
//print(s.myPow(2.00000, 10))
//print(s.myPow(2.10000, 3))
//print(s.myPow(2.00000, -2))
print(s.myPow(1.00001, 123456))


