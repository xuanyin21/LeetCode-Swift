//
//  Leetcode_SwiftTests.swift
//  Leetcode-SwiftTests
//
//  Created by ACTON Software Develop on 4/18/18.
//  Copyright © 2018 Shawn Yin. All rights reserved.
//

import XCTest
@testable import Leetcode_Swift

class Leetcode_SwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let root = TreeNode(1)
        let left = TreeNode(2)
        let right = TreeNode(3)
        
        let leftLeft = TreeNode(4)
        let leftRight = TreeNode(5)
        
        root.left = left
        root.right = right
        
        left.left = leftLeft
        left.right = leftRight
        
        let tree = DiameterBinaryTree()
        
        XCTAssertEqual(tree.diameterOfBinaryTree(root), 3)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
