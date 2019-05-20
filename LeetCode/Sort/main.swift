//
//  main.swift
//  Sort
//
//  Created by saidicaprio on 2019/4/22.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

func bubbleSort<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else { return }
    
    let n = array.count
    for i in 0 ..< n {
        for j in 0 ..< n - 1 - i {
            if array[j] > array[j+1] {
                (array[j], array[j+1]) = (array[j+1], array[j])
            }
        }
    }
}

func quickSort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

var list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
bubbleSort(&list)
print(list)




