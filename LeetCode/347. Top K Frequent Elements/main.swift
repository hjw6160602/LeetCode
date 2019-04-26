//
//  main.swift
//  347. Top K Frequent Elements
//
//  Created by saidicaprio on 2019/4/24.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for num in nums {
            guard let times = map[num] else {
                map[num] = 1
                continue
            }
            map[num] = times + 1
        }
        
        var res: [Int] = []
        for item in map.keys {
            // 与堆顶元素比较 只有大于堆顶元素再操作
            if res.count < k {
                var i = res.count
                //这里注意一定要先加入到数组中来
                res.append(item)
                // 父节点下标
                var parent = (i - 1) / 2
                while parent >= 0 && map[item]! > map[item]!  {
                    (res[i], res[parent]) = (res[parent], res[i])
                    i = parent
                    parent = (i - 1) / 2
                }
            } else {
                guard map[item]! >= map[res[0]]! else {
                    continue
                }
                res[0] = item
                let n = res.count
                var i = 0
                while true {
                    var k = i
                    if i * 2 + 1 < n && map[res[i * 2 + 1]]! < map[res[i]]! {
                        k = i * 2 + 1
                    } else if i * 2 + 2 < n && (map[res[i * 2 + 2]]! < map[res[i]]!) {
                        k = i * 2 + 2
                    }
                    guard i != k else {
                        break
                    }
                    (res[i], res[k]) = (res[k], res[i])
                    i = k
                }
            }
        }
        return res.reversed()
    }
}

class SolutionSwift {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for num in nums {
            guard let times = map[num] else {
                map[num] = 1
                continue
            }
            map[num] = times + 1
        }
        var keys = Array(map.keys)
        keys.sort() {
            let value1 = map[$0]!
            let value2 = map[$1]!
            return value1 > value2
        }
        return Array(keys[0..<k])
    }
}

let s = Solution()
let res = s.topKFrequent([1,1,1,2,2,3],2)
//let res = s.topKFrequent([1,1,1,2,2,3], 2)
print(res)

//let heap = Heap.init([7,5,6,4,2,1], capacity: 10)
//let heap = Heap.init([33,27,21,16,13,15,9,5,6,7,8,1,2], capacity: 20)
//heap.insert(22)

//let heap = Heap.init([33,27,21,16,13,15,19,5,6,7,8,1,2,12], capacity: 20)
//heap.removeMax()
//print(heap.array)

//print(heap.array[10])

//let k = TopKBigestNo()
//let nums = k.generateNums(10000)
//let res = k.topKBigest([9988, 9995, 9938, 9997, 9993, 9995, 9994, 10000, 9993, 9993], 2)
//print(res)
