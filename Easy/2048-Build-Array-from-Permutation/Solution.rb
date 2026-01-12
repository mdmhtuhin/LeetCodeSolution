# Time: 106 ms (22.22229999999999%), Space: 211.6 MB (100%)

# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
    ans = []
    for i in 0..nums.length-1
        ans[i] = nums[nums[i]]
    end
    ans
end