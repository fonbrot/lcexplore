
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var index = 0
    var cur = 0
    while index < nums.count {
        if nums[index] != val {
            nums[cur] = nums[index]
            cur += 1
        }
        index += 1
    }
    nums = Array(nums[..<cur])
    return cur
}

var nums1 = [3,2,2,3]
let val1 = 3
removeElement(&nums1, val1)
