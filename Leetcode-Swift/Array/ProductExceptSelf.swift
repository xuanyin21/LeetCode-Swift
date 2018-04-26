/**
 * Question Link: https://leetcode.com/problems/product-of-array-except-self/
 * Primary idea: Use two variables and result array to hold multiplication result from left and right sides
 *               while iterating the original array
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class ProductExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 1, count: nums.count)
        var left = 1, right = 1
        var i = 0
        while i < nums.count {
            res[i] *= left
            left *= nums[i]
            i += 1
        }
        i = nums.count - 1
        while i >= 0 {
            res[i] *= right
            right *= nums[i]
            i -= 1
        }
        
        return res
    }
}
