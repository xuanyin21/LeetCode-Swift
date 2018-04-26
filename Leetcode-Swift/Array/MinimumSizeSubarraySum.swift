//
//  MinimumSizeSubarraySum.swift
//  Leetcode-Swift
//
//  Created by ACTON Software Develop on 4/25/18.
//  Copyright © 2018 Shawn Yin. All rights reserved.
//

class MinimumSizeSubarraySum {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var minLen = Int.max
        var j = 0
        var sum = 0
        for i in 0..<nums.count {
            
            sum += nums[i]
            
            while sum >= s && j <= i {
                
                minLen = min(minLen, i - j + 1)
                sum -= nums[j]
                
                j += 1
            }
        }
        
        return minLen == Int.max ? 0 : minLen
    }
}
