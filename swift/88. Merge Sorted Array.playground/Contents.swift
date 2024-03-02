func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var cur = m + n - 1
    var cur1 = m - 1
    var cur2 = n - 1
    while cur1 >= 0 || cur2 >= 0 {
        if cur1 >= 0 {
            if cur2 >= 0 {
                if nums1[cur1] >= nums2[cur2] {
                    nums1[cur] = nums1[cur1]
                    cur1 -= 1
                } else {
                    nums1[cur] = nums2[cur2]
                    cur2 -= 1
                }
            } else {
                break
            }
        } else {
            nums1[cur] = nums2[cur2]
            cur2 -= 1
        }
        cur -= 1
    }
}

var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]


merge(&nums1, 3, nums2, 3)

nums1
