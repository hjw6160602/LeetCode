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

testAddSum()

private func testRemveElement() {
    let list = LinkedList.createList([1, 2, 1])
    LinkedList.display(list)
    let head = LeetCode.removeElements(list, 1)
    LinkedList.display(head)
}

private func testAddSum() {
//    l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
    let l1 = LinkedList.createList([0])
    let l2 = LinkedList.createList([0])
    let sumList = LeetCode.addTwoNumbers(l1, l2)
    LinkedList.display(sumList)
}

private func testReverseList() {
    var list = LinkedList.createList([1, 3, 8, 7, 9])
    LinkedList.display(list)
    LinkedList.reverse(&list)
    LinkedList.display(list)
    //LinkedList.display(list)
}


