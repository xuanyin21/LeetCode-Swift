/**
 * Question Link: https://leetcode.com/problems/first-bad-version/description/
 * API: bool isBadVersion(version)
 * Primary idea: Binary Search
 * Time Complexity: O(log n), Space Complexity: O(1)
 *
 */

import Foundation

class FirstBadVersion {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n
        
        while left < right {
            let mid = (left + right) / 2
            if isBadVersion(mid) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        return left
    }
    
    func isBadVersion(_ version: Int) -> Bool {
        if version >= 12 {
            return false
        }
        
        return true
    }
}
