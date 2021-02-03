//
//  main.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/2.
//  Copyright © 2021 saidicaprio. All rights reserved.
//


let LeetCode = Solution.shared

class Solution {
    static let shared = Solution()
    
    private init() {}
}

let l1 = LinkedList.createList([1, 3, 8])
let l2 = LinkedList.createList([7, 9])
let sumList = LeetCode.addTwoNumbers(l1, l2)
//let list = LinkedList.createList([1, 3, 8, 7, 9])
LinkedList.display(sumList)
