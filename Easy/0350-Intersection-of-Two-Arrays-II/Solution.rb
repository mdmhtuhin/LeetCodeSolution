# Time: 79 ms (9.523800000000001%), Space: 211.3 MB (100%)

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
        nums1.sort!
    nums2.sort!
    n1 , n2 = nums1.length, nums2.length
    i, j = 0, 0
    ans = []
    while i != n1 && j != n2
        if nums1[i] == nums2[j]
            ans << nums1[i]
            i += 1
            j += 1
        elsif nums1[i] < nums2[j]
            i += 1
        else
            j += 1
        end
    end
    ans
end