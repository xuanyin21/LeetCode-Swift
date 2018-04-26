/**
 * Question Link: https://leetcode.com/problems/count-and-say/
 * Primary idea: combine count of a character and the character and generate a new string
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */


class CountAndSay {
    func countAndSay(_ n: Int) -> String {
        
        var res = ""
        var count: Int
        var current: Character
        var temp: String
        
        for _ in 1...n {
            
            temp = ""
            if let first = res.first {
                count = 0
                current = first
                
                for c in res {
                    if c == current {
                        count += 1
                    } else {
                        temp += "\(count)\(current)"
                        count = 1
                        current = c
                    }
                }
                
                temp += "\(count)"
            } else {
                current = "1"
            }
            
            temp += "\(current)"
            res = temp
        }
        
        return res
    }
}
