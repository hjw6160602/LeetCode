//
//  main.swift
//  8. String to Integer
//
//  Created by saidicaprio on 2019/2/28.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

//        let nums: [Character] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
//        var item = 0
//            var isLegal = false
//            for (index, value) in nums.enumerated() {
//                if char == value {
//                    item = index
//                    isLegal = true
//                    break
//                }
//            }
//            guard isLegal else {
//                return 0
//            }

// 非法输入
// 0..9之外的非法输入
// 全局变量标记'0'和''两种情况
// '+', '-' 号的判断
// '+', '-' 一堆付好连写的时候的处理
// 是否越界

class Solution {
    func myAtoi(_ str: String) -> Int {
        var flag = 1
        var strCopy = str
        // 1.先去字符串首部的空格
        let whitespace = NSCharacterSet.whitespacesAndNewlines
        strCopy = strCopy.trimmingCharacters(in: whitespace)
        // 2. 判断第一个字符是不是正"+"负"-"符号，如果是则去掉正负号标记flag
        if strCopy.first == "-" {
            strCopy.remove(at: strCopy.startIndex)
            flag = -1
        } else if strCopy.first == "+" {
            strCopy.remove(at: strCopy.startIndex)
        }
        
        var sum: Int = 0
        for char in strCopy {
            //3. 逐个字符串遍历，如果是合法字符再进入计算
            guard char >= "0" && char <= "9" else {
                return flag * sum
            }
            // 4. ASSIC码转为数字
            let value = Int(char.unicodeScalars.first!.value) - 48
            // 5. 累加算出总和
            sum = sum * 10 + value
            // 6. 越界判断
            if flag * sum > Int32.max {
                return Int(Int32.max)
            }
            if flag * sum < Int32.min {
                return Int(Int32.min)
            }
        }
        return flag * sum
    }
}

//Character扩展代码
extension Character {
    func toInt() -> Int {
        var intFromCharacter:Int = 0
        for scalar in String(self).unicodeScalars {
            intFromCharacter = Int(scalar.value)
        }
        return intFromCharacter
    }
}

let s = Solution()
var x = s.myAtoi("   -42")
print(x)
x = s.myAtoi("   2147483648 white space")
print(x)
x = s.myAtoi("4193 with words")
print(x)
x = s.myAtoi("words and 987")
print(x)
x = s.myAtoi("3.14159")
print(x)
x = s.myAtoi("-+1")
print(x)


