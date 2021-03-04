//
//  168.Excel表列名称.swift
//  Array
//
//  Created by 贺嘉炜 on 2021/2/26.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
    
    
    func convertToTitle(_ n: Int) -> String {
        var title : [Character] = []
        var lastIndex = 0
        for idx in 1...n {
            var x = idx % 26
            if x == 0 {
                x = 26
            }
//            let char: Character = ""
            let asciiValue = 64 + x
            let newChar = Character(UnicodeScalar(asciiValue)!)
            
            if newChar == "A" { // 需要进位
                
                if title.count == 0 {
                    title.append(newChar)
                    continue
                }
                // 需要添加新的元素
                var needAppendChar = true
                for j in 0..<title.count {
                    guard title[j] == "Z" else {
                        needAppendChar = false
                        break
                    }
                }
                if needAppendChar {
                    for k in 0..<title.count {
                        title[k] = "A"
                    }
                    title.append("A")
                    lastIndex += 1
//                    print(title)
                    continue
                } else {
                    // 不需要添加新的元素
                    var j = lastIndex
                    let c = Character(UnicodeScalar(title[j].asciiValue! + 1))
                    title[j] = c
                    while title[j] > "Z" {
                        title[j] = "A"
                        j -= 1
                        guard j >= 0 else {
                            break
                        }
                        let c = Character(UnicodeScalar(title[j].asciiValue! + 1))
                        title[j] = c
                    }
                }
            } else {
                title[lastIndex] = newChar
            }
            print(title)
        }
        return String(title)
    }
}

func testConvertToTitle() {
    let x = LeetCode.convertToTitle(1000000001)
    print(x)
}


//
//extension Character {
//    var isAscii: Bool {
//        return unicodeScalars.allSatisfy { $0.isASCII }
//    }
//    var ascii: UInt32? {
//        return isAscii ? unicodeScalars.first?.value : nil
//    }
//}
//
//extension StringProtocol {
//    var asciiValues: [UInt8] {
//        compactMap(\.asciiValue)
//    }
//
//    var asciiValue: UInt32 {
//        return compactMap { $0.ascii }
//    }
//
//}
