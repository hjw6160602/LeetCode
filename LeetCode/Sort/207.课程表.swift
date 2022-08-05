//
//  207.课程表.swift
//  Sort
//
//  Created by SaiDiCaprio on 2022/8/5.
//  Copyright © 2022 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
    
//    64 ms 92.59%
//    14 MB 92.59%
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {

        var inDegrees = Array(repeating: 0, count: numCourses), fromTo = [Int: [Int]]()
        
        var coursesCouldTake = [Int](), queue = [Int]()
        
        for prerequisite in prerequisites {
            inDegrees[prerequisite[0]] += 1
            // 用哈希表来存储 有向无环图的 依赖关系
            fromTo[prerequisite[1], default: []].append(prerequisite[0])
        }
        
        // BFS
        for course in 0..<numCourses {
            if inDegrees[course] == 0 {
                queue.append(course)
            }
        }
        
        while !queue.isEmpty {
            let currentCourse = queue.removeFirst()
            coursesCouldTake.append(currentCourse)
            
            guard let toCourses = fromTo[currentCourse] else {
                continue
            }
            
            for to in toCourses {
                inDegrees[to] -= 1
                if inDegrees[to] == 0 {
                    queue.append(to)
                }
            }
        }
        return coursesCouldTake.count == numCourses
    }
}

func test207CanFinish() {
//    let numCourses = 2, prerequisites = [[1,0]]
    let numCourses = 2, prerequisites = [[1,0],[0,1]]
    let x = LeetCode.canFinish(numCourses, prerequisites)
    print(x)
}



//你这个学期必须选修 numCourses 门课程，记为 0 到 numCourses - 1 。
//在选修某些课程之前需要一些先修课程。 先修课程按数组 prerequisites 给出，其中 prerequisites[i] = [ai, bi] ，表示如果要学习课程 ai 则 必须 先学习课程  bi 。
//
//例如，先修课程对 [0, 1] 表示：想要学习课程 0 ，你需要先完成课程 1 。
//请你判断是否可能完成所有课程的学习？如果可以，返回 true ；否则，返回 false 。
//
//示例 1：
//输入：numCourses = 2, prerequisites = [[1,0]]
//输出：true
//解释：总共有 2 门课程。学习课程 1 之前，你需要完成课程 0 。这是可能的。
//
//示例 2：
//输入：numCourses = 2, prerequisites = [[1,0],[0,1]]
//输出：false
//解释：总共有 2 门课程。学习课程 1 之前，你需要先完成​课程 0 ；并且学习课程 0 之前，你还应先完成课程 1 。这是不可能的。
//
//提示：
//1 <= numCourses <= 10^5
//0 <= prerequisites.length <= 5000
//prerequisites[i].length == 2
//0 <= ai, bi < numCourses
//prerequisites[i] 中的所有课程对 互不相同
