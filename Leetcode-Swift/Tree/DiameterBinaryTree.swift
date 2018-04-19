/**
 * Question Link: https://leetcode.com/problems/diameter-of-binary-tree/description/
 * Primary idea: recursion, maxDepth
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

import Foundation

class DiameterBinaryTree {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var res = 0
        
        maxDepth(root, &res)
        
        return res
    }
    
    fileprivate func maxDepth(_ node: TreeNode?, _ res: inout Int) -> Int {
        guard let node = node else { return 0 }
        
        let left = maxDepth(node.left, &res)
        let right = maxDepth(node.right, &res)
        
        res = max(res, left + right)
        
        return max(left, right) + 1
    }
}
