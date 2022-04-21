//
//  66. 加一.swift
//  Array
//
//  Created by 贺嘉炜 on 2022/4/21.
//  Copyright © 2022 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
//    0 ms 100.00%
//    13.8 MB 59.88%
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits, carry = 1
        var i = digits.count - 1
        while i >= 0 {
            digits[i] += carry
            guard digits[i] > 9 else {
                return digits
            }
            digits[i] = 0
            i -= 1
        }
        return [1] + digits
    }
}

func test66PlusOne() {
    let x = LeetCode.plusOne([0])
    print(x)
}
