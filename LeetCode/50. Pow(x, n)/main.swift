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
        guard n != 0 else {
            return 1
        }
        guard x != 0 else {
            return 0
        }
        
        var res = _helper(abs(x), abs(n))
        
        if n < 0 {
            res = 1 / res
        }
        if n % 2 != 0 && x < 0 {
            res = -res
        }
        return res
    }
    
    private func _helper(_ x: Double, _ n: Int) -> Double {
        guard n != 0 else {
            return 1
        }
        guard n != 1 else {
            return x
        }
        if n % 2 == 0 {
            return _helper(x * x, n / 2)
        } else {
            return _helper(x, n - 1) * x
        }
    }
}

// 方法1：傻乘 pow参数为(0.00001, 2147483647)超时
class Solution1 {
    func myPow(_  x : Double, _ n: Int) -> Double {
        guard n != 0 else {
            return 1
        }
        guard x != 0 else {
            return 0
        }
        guard x != 1 else {
            return 1
        }
        var res: Double = 1
        var multiplicator = x
        var power = n
        if n < 0 {
            multiplicator = 1 / x
            power = -1 * n
        }
        for _ in 1...power {
            res = res * multiplicator;
        }
        return res;
    }
}

// 递归写法 幂级大于58233报错 EXC_BAD_ACCESS (code=2,...)
class Solution2 {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var res: Double = 1
        if n > 0 {
            //            print("res: " + String(res))
            //            print("n: " + String(n) )
            res = myPow(x, n - 1) * x
        } else if n < 0 {
            res = myPow(x, n + 1) / x
        }
        return res;
    }
}

let s = Solution()
print(s.myPow(2.00000, 10))
print(s.myPow(2.10000, 3))
print(s.myPow(2.00000, -2))
print(s.myPow(0.44528, 0))
print(s.myPow(1.00001, 123456))
print(s.myPow(0.00001, 2147483647))




