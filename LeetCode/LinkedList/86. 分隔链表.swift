//
//  86. 分隔链表.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/3.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/partition-list

import Foundation

extension Solution {
    
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        guard head != nil else { return nil }
        
        let dummy = ListNode(), depart = ListNode()
        var tailL = dummy, tailR = depart
        
        var current = head
        
        while current != nil {
            let next = current!.next
            current!.next = nil
            if current!.val < x {
                tailL.next = current
                tailL = current!
            } else {
                tailR.next = current
                tailR = current!
            }
            current = next
        }
        tailL.next = depart.next
        
        return dummy.next
        
    }
    
    func partitionSwift(_ head: ListNode?, _ x: Int) -> ListNode? {
            let prevDummy = ListNode(0), postDummy = ListNode(0)
            var prev = prevDummy, post = postDummy
            
            var node = head
            
            while node != nil {
                let next = node!.next
                node!.next = nil

                if node!.val < x {
                    prev.next = node
                    prev = prev.next!
                } else {
                    post.next = node
                    post = post.next!
                }
                node = next
            }
            
            prev.next = postDummy.next
            
            return prevDummy.next
        }
    
}

func testPartition() {
    let list = LinkedList.createList( [1,4,3,2,5,2] )
    LinkedList.display(list)
    let res = Solution.shared.partition(list, 3)
    LinkedList.display(res)
}

//  给你一个链表的头节点 head 和一个特定值 x ，请你对链表进行分隔，
//  使得所有 小于 x 的节点都出现在 大于或等于 x 的节点之前。
//
//  你应当 保留 两个分区中每个节点的初始相对位置。
//
//  示例 1：
//
//  输入：head = [1,4,3,2,5,2], x = 3
//  输出：[1,2,2,4,3,5]

//  示例 2：
//
//  输入：head = [2,1], x = 2
//  输出：[1,2]
