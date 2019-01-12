//
//  main.swift
//  ToLowerCase
//
//  Created by saidicaprio on 2019/1/12.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class Solution {
    func toLowerCase(_ str: String) -> String {
        let low = str.lowercased()
        return low
    }
}

let low = Solution().toLowerCase("Hello!")
print(low)
