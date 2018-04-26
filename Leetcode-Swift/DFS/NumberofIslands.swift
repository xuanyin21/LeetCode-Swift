/**
 * Question Link: https://leetcode.com/problems/number-of-islands/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions
 *
 * Time Complexity: O(mn), Space Complexity: O(1)
 *
 */

import Foundation

class NumberofIslands {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 else {
            return 0
        }
        
        var grid = grid
        var res = 0
        
        let nr = grid.count
        let nc = grid[0].count
        
        for r in 0..<nr {
            for c in 0..<nc {
                if grid[r][c] == "1" {
                    res += 1
                    dfs(&grid, r, c)
                }
            }
        }
        
        return res
    }
    
    fileprivate func dfs (_ grid: inout [[Character]], _ r: Int, _ c: Int) {
        let nr = grid.count
        let nc = grid[0].count
        
        guard r >= 0 && r < nr && c >= 0 && c < nc && grid[r][c] != "0" else { return }
        
        grid[r][c] = "0"
        dfs(&grid, r - 1, c)
        dfs(&grid, r + 1, c)
        dfs(&grid, r, c - 1)
        dfs(&grid, r, c + 1)
        
    }
}
