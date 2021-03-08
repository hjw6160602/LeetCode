//
//  206.翻转链表.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/4.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/reverse-linked-list

import Foundation

extension Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var rHead: ListNode? = nil
        var current = head
        while current != nil {
            (current!.next, rHead, current) = (rHead, current, current?.next)
        }
        return rHead
    }
    
    func reverseListPrictice1(_ head: ListNode?) -> ListNode? {
        var rHead: ListNode? = nil
        var curNode = head
        while curNode != nil {
            let nxtNode = curNode!.next
            curNode!.next = rHead
            rHead = curNode
            curNode = nxtNode
        }
        return rHead
    }
    
    func reverseListPrictice2(_ head: ListNode?) -> ListNode? {
        var rHead: ListNode? = nil
        var current = head
        while current != nil {
            (current!.next, rHead, current) = (rHead, current, current!.next)
        }
        return rHead
    }
}

func testReverseList() {
    let list = LinkedList.createList([1, 3, 8, 7, 9])
    LinkedList.display(list)
    let head = LeetCode.reverseListPrictice2(list)
    LinkedList.display(head)
    //LinkedList.display(list)
}

//反转一个单链表。

//示例:
//输入: 1->2->3->4->5->NULL
//输出: 5->4->3->2->1->NULL

//进阶:
//你可以迭代或递归地反转链表。你能否用两种方法解决这道题？

