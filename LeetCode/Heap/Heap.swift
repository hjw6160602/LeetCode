//
//  Heap.swift
//  347. Top K Frequent Elements
//
//  Created by saidicaprio on 2019/4/24.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class Heap {
    // 数组，从下标 1 开始存储数据
    var array: [Int]
    // 堆可以存储的最大数据个数
    private var max: Int
    // 堆中已经存储的数据个数
    private var count: Int

    init(_ capacity: Int) {
        array = Array.init(repeating: 0, count: capacity)
        max = capacity
        count = 0
    }

    init(_ array: [Int], capacity: Int) {
        self.array = array
        max = capacity
        count = array.count
    }

    func insert(_ item: Int) {
        guard count < max else {// 堆满了
            return
        }
        array.append(item)
        var i = count
        var parent = (i - 1) / 2
        // 自下往上堆化 如果父节点小于插入节点那么交换位置
        while parent >= 0 && array[i] > array[parent] {
            //交换下标为 i 和 i/2 的两个元素
            (array[i], array[parent]) = (array[parent], array[i])
            i = parent
            parent = (i - 1) / 2
        }
    }

    func removeMax() {
        guard count > 0 else {
            return
        }
        array[0] = array.last!
        count -= 1
        array.removeLast()
        var i = 0
        while true {
            var k = i
            if ((i * 2 + 1) < count && array[i] < array[i * 2 + 1]) {
                k = i * 2 + 1
            } else if ((i * 2 + 2) < count && array[i] < array[i * 2 + 2]) {
                k = i * 2 + 2
            }
            guard k != i else {
                return
            }
            (array[i], array[k]) = (array[k], array[i])
            i = k
        }
    }

}


