//
//  02. 两数相加.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/2.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//  链接：https://leetcode-cn.com/problems/add-two-numbers

//给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。
//
//请你将两个数相加，并以相同形式返回一个表示和的链表。
//
//你可以假设除了数字 0 之外，这两个数都不会以 0 开头。

//输入：l1 = [2,4,3], l2 = [5,6,4]
//输出：[7,0,8]
//解释：342 + 465 = 807.

extension Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2

        let dummyHead = ListNode()
        var currentNode = dummyHead
        var hasCarrier = false

        while list1 != nil || list2 != nil {
            let sum = (list1?.val ?? 0) + (list2?.val ?? 0) + (hasCarrier ? 1 : 0)
            hasCarrier = sum >= 10
            let value = hasCarrier ? sum % 10 : sum
            let node = ListNode(value)
            currentNode.next = node
            list1 = list1?.next
            list2 = list2?.next
            currentNode = node
        }

        if hasCarrier {
            let node = ListNode(1)
            currentNode.next = node
            currentNode = node
        }

        return dummyHead.next
    }
    
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        guard let l1 = l1 else { return l2 }
//        guard let l2 = l2 else { return l1 }
//
//        let outputNode = ListNode((l1.val + l2.val) % 10)
//        if l1.val + l2.val > 9 {
//            outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next),
//                                            ListNode(1))
//        } else {
//            outputNode.next = addTwoNumbers(l1.next, l2.next)
//        }
//        return outputNode
//    }
}
