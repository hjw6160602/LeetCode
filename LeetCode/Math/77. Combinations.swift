//
//  77. Combinations.swift
//  Math
//
//  Created by 江雪 on 2021/2/18.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
/* Given two integers n and k,
 * return all possible combinations of k numbers out of 1 ... n.
 */

// solution = C(n,k)
extension Solution {
    
//    func combine(_ n: Int, _ k: Int) -> [[Int]] {
//        var set = Set<Int>(1...n)
//
//        var res = select(set, k)
//
//        return [[]]
//    }
    
//    func select(_ set:Set<Int>, _ k: Int,) -> [Int] {
//        guard k > 0 else {
//            return []
//        }
//        var setCopy = set
//        var res: [Int] = []
//        for item in set {
//            res.append(item)
//            setCopy.remove(item)
//            let items = select(setCopy, k-1)
//            res.append(contentsOf: items)
//        }
//        return res
//    }
    
}


extension Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result = [[Int]]()
        var combination = [Int]()
        
        selectRecur(&result, &combination, 1, n, k)
        
        return result
    }
    
    private func selectRecur(_ result: inout [[Int]], _ combination: inout [Int], _ start: Int, _ n: Int, _ k: Int) {
        // terminator
        if k == 0 {
            result.append(combination)
            return
        }
        if start > n {
            return
        }
        
        for i in start...n {
            combination.append(i)
            selectRecur(&result, &combination, i + 1, n, k - 1)
            combination.removeLast()
        }
    }
}

let s = Solution2()
print(s.combine(4, 2))
//for index in 1...4 {
//    let res = s.combine(4, index)
//    print(res)
//}
