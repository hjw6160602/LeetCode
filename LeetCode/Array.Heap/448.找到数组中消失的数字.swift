//
//  448.找到数组中消失的数字.swift
//  String
//
//  Created by 贺嘉炜 on 2022/4/12.
//  Copyright © 2022 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums
        var result = [Int]()

        for i in 0..<nums.count {
            let index = abs(nums[i]) - 1
            if nums[index] > 0 {
                nums[index] = -nums[index]
            }
        }

        for i in 0..<nums.count {
            if nums[i] > 0 {
              result.append(i+1)
            }
        }

        return result
    }
}

func testFindDisappearNumbers() {
    let res = LeetCode.findDisappearedNumbers([4,3,2,7,8,2,3,1])
    print(res)
}
