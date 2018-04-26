//
//  ExclusiveTime.swift
//  Leetcode-Swift
//
//  Created by ACTON Software Develop on 4/20/18.
//  Copyright © 2018 Shawn Yin. All rights reserved.
//

import Foundation

class ExclusiveTime {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
        var stack = [Int]()
        var res = Array(repeating: 0, count: n)
        
        var prev = 0
        for log in logs {
            let tokens = log.components(separatedBy: ":")
            
            let id = Int(tokens[0])!
            let act = tokens[1]
            let time = Int(tokens[2])!
            
            if act == "start" {
                if let peek = stack.last {
                    res[peek] += time - prev
                }
                stack.append(id)
                prev = time
            } else {
                res[stack.removeLast()] += time - prev + 1
                prev = time + 1
            }
            
            
        }
        
        return res
    }
}
