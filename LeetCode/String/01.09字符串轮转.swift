//
//  面试题01.09 字符串轮转.swift
//  String
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//  https://leetcode-cn.com/problems/string-rotation-lcci/
//

extension Solution {
    func isFlipedString(_ s1: String, _ s2: String) -> Bool {
        guard s1.count == s2.count else { return false }
        if s1.count == 0 { return true }
        return (s1 + s1).contains(s2)
    }
}

func testStringRotation() {
    let x = LeetCode.isFlipedString("", "")
    print(x)
}
