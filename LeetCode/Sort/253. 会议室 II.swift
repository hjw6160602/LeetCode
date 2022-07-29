//
//  253. 会议室 II.swift
//  Sort
//
//  Created by 贺嘉炜 on 2022/7/29.
//  Copyright © 2022 saidicaprio. All rights reserved.
//  https://leetcode.cn/problems/meeting-rooms-ii

import Foundation


extension Solution {
    
//    60 ms 71.43%
//    14.8 MB 28.57%
//    * Primary idea: Sort start and end separately, then count conflicts
//    * Time Complexity: O(nlogn), Space Complexity: O(n)
    
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {

        let startingTimes = intervals.map { $0[0] }.sorted()
        let endingTimes = intervals.map { $0[1] }.sorted()
        print(startingTimes, endingTimes)
        
        let intervalsCount = intervals.count
        
        var i = 0, j = 0, meetingRoomsNum = 0
        
        while i < intervalsCount && j < intervalsCount {
            if startingTimes[i] < endingTimes[j] {
                meetingRoomsNum += 1
            } else {
                j += 1
            }
            i += 1
        }
        
        return meetingRoomsNum
    }
    
    
//    60 ms 71.43%
//    16 MB 14.29%
    
//    开会也可以理解成坐公交，都是占用某个资源。
//    intervals = [[0,30],[5,10],[15,20]]
//    第一个人从0上车，从30下车；
//    第二个人从5上车，10下车。。。
//    我们的问题转化为最多车上有几个人（也就是最多有多少会议室）。
//    显然：上车，车上人数+1；下车，车上人数-1 我们把intervals拆解一下

//    上车：[0, 1], [5, 1], [15, 1]
//    下车：[10, -1], [20, -1], [30, -1]
//    然后按照第一个数把上下车排好序
//    人数  1    2     1    2     1      0
//         0----5----10----15----20-----30
//    变化 +1   +1    -1    +1    -1    -1
    func minMeetingRoomsP1(_ intervals: [[Int]]) -> Int {
        let aboard = intervals.map { [$0[0], 1] }
        let debus = intervals.map { [$0[1], -1] }
        let busTime = (aboard + debus).sorted {
            if $0[0] == $1[0] {
                // 这行能确保先下车 避免错误
                return $0[1] < $1[1]
            }
            return $0[0] < $1[0]
        }
        
        var maxNum = 0, cur = 0
        print(busTime)
        for time in busTime {
            cur += time[1]
            maxNum = max(maxNum, cur)
        }
        return maxNum
    }
    
}

func test253MinMeetingRooms() {
//    let intervals = [[0,30],[5,10],[15,20]]
    
    let intervals = [[13,15],[1,13]]
    let x = LeetCode.minMeetingRoomsP1(intervals)
    print(x)
}


//给你一个会议时间安排的数组 intervals ，每个会议时间都会包括开始和结束的时间 intervals[i] = [starti, endi] ，返回 所需会议室的最小数量 。

//示例 1：
//输入：intervals = [[0,30],[5,10],[15,20]]
//输出：2

//示例 2：
//输入：intervals = [[7,10],[2,4]]
//输出：1

//提示：
//1 <= intervals.length <= 104
//0 <= starti < endi <= 106
