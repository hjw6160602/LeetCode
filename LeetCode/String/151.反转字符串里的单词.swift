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
    
    /// 要求原地翻转 不允许开辟空间
    func reverseURL(_ url: String) -> String {
        var chars = [Character](url)
        _reverseString(&chars, begin: 0, end: url.count - 1)
        print(String(chars))
        
        var dotIndex = [(Int, Int)]()
        var begin = 0
        for index in 0..<url.count - 1 {
            if chars[index] == " " {
                dotIndex.append((begin, index - 1))
                begin = index + 1
            }
        }
        dotIndex.append((begin, url.count - 1))
        
        print(dotIndex)
        for range in dotIndex {
            _reverseString(&chars, begin: range.0, end: range.1)
            print(String(chars))
        }
        
        return String(chars)
    }
    
    private func _reverseString(_ chars: inout [Character], begin: Int, end: Int) {
        let mid = (end - begin + 1) >> 1
        for index in 0..<mid {
            (chars[begin + index], chars[end - index]) = (chars[end - index], chars[begin + index])
        }
    }

    /// MARK: - 面试代码
//    标题：URL反转
//    描述信息
//    给定形如 `www.toutiao.com` 的 URL，将其转换成 `com.toutiao.www` 的形式，要求必须原地操作
    func reverseURL(_ url: inout String) {
        let chars = [Charactor](url)
        let mid = chars.count >> 1
        var begin = 0, end = 0
        reverseString(_ string: inout String, 0, end: chars.count)
        url = String(chars)
    }

    private func _reverseString(_ string: inout String, begin: Int, end: Int) {
        for index in begin...mid {
            if char == "."
            end = index
            (chars[index], chars[chars.count - index]) = (chars[chars.count - index], chars[index])
            begin = end + 1
        }
    }
}

func testReverseURL() {
//    "moc.oaituot.www"
//    "com.toutiao.www"
    let x = LeetCode.reverseURL("the sky is blue")
    print(x)
}

//151. 翻转字符串里的单词
//给定一个字符串，逐个翻转字符串中的每个单词。

//说明：
//无空格字符构成一个 单词 。
//输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。
//如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。

//示例 1：
//输入："the sky is blue"
//输出："blue is sky the"

//示例 2：
//输入："  hello world!  "
//输出："world! hello"
//解释：输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。

//示例 3：
//输入："a good   example"
//输出："example good a"
//解释：如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。

//示例 4：
//输入：s = "  Bob    Loves  Alice   "
//输出："Alice Loves Bob"

//示例 5：
//输入：s = "Alice does not even like bob"
//输出："bob like even not does Alice"
