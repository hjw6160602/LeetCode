//
//  19. 删除链表的倒数第 N 个结点.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2022/7/18.
//  Copyright © 2022 saidicaprio. All rights reserved.
//

import Foundation


extension Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode()
        dummy.next = head
        
        var node = head, n = n
        var nthNode: ListNode?
        var cur = 1
        while node?.next != nil {
            node = node?.next
            if cur == n {
                nthNode = head
            }
            cur += 1
        }
        
        nthNode?.next = nthNode?.next?.next
        
        return dummy.next
    }
}

func test19removeNthFromEnd() {
    let list = LinkedList.createList([1,2,3,4,5])
    let x = LeetCode.removeElements(list, 2)
    LinkedList.display(x)
}

//给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。
//
//示例 1：
//输入：head = [1,2,3,4,5], n = 2
//输出：[1,2,3,5]
//
//示例 2：
//输入：head = [1], n = 1
//输出：[]
//
//示例 3：
//输入：head = [1,2], n = 1
//输出：[1]
//
//提示：
//链表中结点的数目为 sz
//1 <= sz <= 30
//0 <= Node.val <= 100
//1 <= n <= sz
