
func duplicateZeros(_ arr: inout [Int]) {
    var dub0 = 0
    var lastindex = arr.count - 1
    var cur = 0
    while cur <= lastindex - dub0 {
        if arr[cur] == 0 {
            if cur == lastindex - dub0 {
                arr[lastindex] = 0
                lastindex -= 1
            } else {
                dub0 += 1
            }
        }
        cur += 1
    }
    var currindex = lastindex - dub0

    while currindex >= 0 {
        if arr[currindex] == 0 {
            arr[lastindex] = 0
            lastindex -= 1
        }
        arr[lastindex] = arr[currindex]
        currindex -= 1
        lastindex -= 1
    }
}

var a = [1,5,2,0,6,8,0,6,0]
duplicateZeros(&a)

var b = [1,0,2,3,0,4,5,0]

duplicateZeros(&b)

