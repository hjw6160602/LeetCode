//
//  203.移除链表元素.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/3.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//  https://leetcode-cn.com/problems/remove-linked-list-elements/


//删除链表中等于给定值 val 的所有节点。
extension Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode()
        dummy.next = head
        var node = dummy
        while node.next != nil {
            let nxtNode = node.next!
            if nxtNode.val == val {
                node.next = nxtNode.next
            } else {
                node = node.next!
            }
        }
        return dummy.next
    }
}
