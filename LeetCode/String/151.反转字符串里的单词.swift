//
//  151.反转字符串里的单词.swift
//  String
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//  https://leetcode-cn.com/problems/reverse-words-in-a-string/

import Foundation

extension Solution {
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ").reversed().joined(separator: " ")
    }
}
