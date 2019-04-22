//
//  main.swift
//  344. Reverse String
//
//  Created by saidicaprio on 2019/4/22.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation


class Solution {
    func reverseString(_ s: inout [Character]) {
        guard s.count > 1 else {
            return
        }
        let max = Int(s.count / 2)
        for index in 0..<max {
            let temp = s[index]
            s[index] = s[s.count - 1 - index]
            s[s.count - 1 - index] = temp
        }
    }
}

class Solution1 {
    func reverseString(_ s: inout [Character]) {
//        s.reverse()
        guard s.count > 0 else {
            return
        }
        var queue = [Character]()
        for _ in 1...s.count {
            queue.append(s.removeLast())
        }
        s = queue
    }
}


let s = Solution()
var characters:[Character] = ["h", "e", "l", "l"]
s.reverseString(&characters)
print(characters)
