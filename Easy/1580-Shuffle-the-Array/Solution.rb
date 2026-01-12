# Time: 102 ms (6.6119999999999655%), Space: 211.6 MB (100%)

# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
    ans = []
    i = 0
    j = n 
    l = nums.length - 1
    while i < n && j <= l
        ans << nums[i]
        ans << nums[j]
        i += 1
        j += 1
    end
    ans
end