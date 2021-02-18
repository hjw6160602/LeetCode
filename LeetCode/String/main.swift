//
//  main.swift
//  String
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

import Foundation

let LeetCode = Solution.shared

class Solution {
    static let shared = Solution()
    
    private init() {}
}


print(LeetCode.myAtoi("   -42"))
print(LeetCode.myAtoi("   2147483648 white space"))
print(LeetCode.myAtoi("4193 with words"))
print(LeetCode.myAtoi("words and 987"))
print(LeetCode.myAtoi("3.14159"))
print(LeetCode.myAtoi("-+1"))
