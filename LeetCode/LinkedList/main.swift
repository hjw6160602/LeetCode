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

testRemveElement()

private func testRemveElement() {
    let list = LinkedList.createList([1, 2, 1])
    LinkedList.display(list)
    let head = LeetCode.removeElements(list, 1)
    LinkedList.display(head)
}

//let l1 = LinkedList.createList([1, 3, 8])
//let l2 = LinkedList.createList([7, 9])
//let sumList = LeetCode.addTwoNumbers(l1, l2)

private func testReverseList() {
    var list = LinkedList.createList([1, 3, 8, 7, 9])
    LinkedList.display(list)
    LinkedList.reverse(&list)
    LinkedList.display(list)
    //LinkedList.display(list)
}


