# Time: 0 ms (100.00%), Space: 211.39 MB (99.52%)

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    num = nums1.take(m)
    n1 = 0
    n2 = 0
    for p in 0..( m + n) - 1
        if n2 >= n || (n1 < m && nums1[n1] <= nums2[n2])
            nums1[p] = num[n1]
            n1 += 1
        else
            nums1[p] = nums2[n2]
            n2 += 1
        end
    end
    nums1.sort!
end