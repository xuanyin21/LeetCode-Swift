//
//  WordSearch.swift
//  Leetcode-Swift
//
//  Created by ACTON Software Develop on 4/26/18.
//  Copyright © 2018 Shawn Yin. All rights reserved.
//

import UIKit

class WordSearch {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard board.count > 0 && board[0].count > 0 else {
            return false
        }
        
        let M = board.count
        let N = board[0].count
        let W = word.count
        
        for i in 0..<M {
            for j in 0..<N {
                if _dfs(board, Array(word), i, j, 0, M, N, W) {
                    return true
                }
            }
        }
        
        return false
    }
    
    private func _dfs(_ board:[[Character]], _ word: [Character], _ i: Int, _ j: Int, _ start: Int, _ M: Int, _ N: Int, _ W: Int) -> Bool {
        
        if start == W {
            return true
        }
        
        guard i >= 0, j >= 0, i < M, j < N else {
            return false
        }
        
        let curr = board[i][j]
        guard curr == word[start] else {
            return false
        }
        
        var board = board
        board[i][j] = "*"
        
        let res = _dfs(board, word, i, j + 1, start + 1, M, N, W)
            || _dfs(board, word, i, j - 1, start + 1, M, N, W)
            || _dfs(board, word, i + 1, j, start + 1, M, N, W)
            || _dfs(board, word, i - 1, j, start + 1, M, N, W)
        
        board[i][j] = curr
        return res
    }
}
