//
//  70. Climbing Stairs.swift
//  DynamicPrograming
//
//  https://leetcode.com/problems/climbing-stairs/
//
//  Created by saidicaprio on 2019/4/11.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

/*
 * You are climbing a stair case. It takes n steps to reach to the top.
 * Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 * Note: Given n will be a positive integer.
 */

extension Solution {
    func climbStairs1(_ n: Int) -> Int {
        var steps = [Int](repeating: 0, count: n+1)
        return _helper(n, &steps)
    }
    
    private func _helper(_ n: Int, _ steps: inout [Int]) -> Int {
        // termination case
        if n < 0 {
            return 0
        }
        if n == 0 {
            return 1
        }
        if steps[n] != 0 {
            return steps[n]
        }
        steps[n] = _helper(n - 1, &steps) + _helper(n - 2, &steps)
        return steps[n]
    }
}

//    f(n) = f(n-1) + f(n-2)
extension Solution {
    var res:[Int] = [1, 1]
    func climbStairs2(_ n: Int) -> Int {
        var sum1 = 1
        var sum2 = 1
        if n < 2 {
            return 1
        }
        var sum = sum1 + sum2
        for _ in 2...n {
            sum = sum1 + sum2
            sum1 = sum2
            sum2 = sum
        }
        return sum
    }
}

extension Solution1 {
    var res:[Int] = [1, 1]
    func climbStairs3(_ n: Int) -> Int {
        if n < 2 {
            return res[n]
        }
        for i in 2...n {
            res.append(res[i-1] + res[i-2])
        }
        return res[n]
    }
}

extension Solution {
    var res:[Int] = [1, 1, 2]
    func climbStairs4(_ n: Int) -> Int {
        if res.count > n {
            return res[n]
        } else {
            res.append(climbStairs(n-1) + climbStairs(n-2))
            return res [n]
        }
    }
}
// over time
extension Solution3 {
    var res:[Int] = [1, 1, 2]
    func climbStairs5(_ n: Int) -> Int {
        if n == 1 {
            return 1
        } else if n == 2 {
            return 2
        } else {
            return climbStairs(n-1) + climbStairs(n-2)
        }
    }
}

let s = Solution()
print(s.climbStairs(80))
print(s.climbStairs(1))
print(s.climbStairs(2))
//print(s.climbStairs(6))
//print(s.climbStairs(7))
