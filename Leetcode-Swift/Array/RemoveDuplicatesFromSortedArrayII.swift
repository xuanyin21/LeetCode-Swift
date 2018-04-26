
/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/
 * Primary idea: use current to hold current number, and isSame to handle second same
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

import UIKit

class RemoveDuplicatesFromSortedArrayII {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = nums.count - 1
        var curr = Int.min
        var isSame = false
        while i >= 0 {
            if nums[i] == curr {
                if isSame {
                    nums.remove(at: i)
                }
                isSame = true
            } else {
                curr = nums[i]
                isSame = false
            }
            i -= 1
        }
        
        return nums.count
    }
}
