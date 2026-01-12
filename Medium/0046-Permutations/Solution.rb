# Time: 84 ms (5.555500000000004%), Space: 210.9 MB (100%)

# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    return [nums] if nums.length == 1
    nums.permutation(nums.length).to_a
end