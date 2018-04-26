/**
 * Question Link: https://leetcode.com/problems/meeting-rooms/
 * Primary idea: Sort and traverse, find if any conflicts exist
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 *
 * Definition for an interval.
 * public class Interval {
 *   public var start: Int
 *   public var end: Int
 *   public init(_ start: Int, _ end: Int) {
 *     self.start = start
 *     self.end = end
 *   }
 * }
 */

class MeetingRooms {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        let intervals = intervals.sorted {
            if $0.start != $1.start {
                return $0.start < $1.start
            } else {
                return $0.end < $1.end
            }
        }
        var lastEnd = 0
        for interval in intervals {
            if interval.start >= lastEnd {
                lastEnd = interval.end
            } else {
                return false
            }
        }
        
        return true
    }
}

