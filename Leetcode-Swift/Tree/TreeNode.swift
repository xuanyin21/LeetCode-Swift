//
//  TreeNode.swift
//  Leetcode-Swift
//
//  Created by ACTON Software Develop on 4/18/18.
//  Copyright © 2018 Shawn Yin. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
