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
    private var a: [Int]
    // 堆可以存储的最大数据个数
    private var n: Int
    // 堆中已经存储的数据个数
    private var count: Int
    
    init(_ capacity: Int) {
        a = Array.init(repeating: 0, count: capacity)
        n = capacity
        count = 0
    }
    
    func insert(_ item: Int) {
        guard n < count else {// 堆满了
            return
        }
        count += 1
        a[count] = item
        var i = count
        // 自下往上堆化
        while i/2 > 0 && a[i] > a[i/2] {
            //交换下标为 i 和 i/2 的两个元素
            (a[i], a[i/2]) = (a[i/2], a[i])
            i /= 2
        }
    }
    
}


