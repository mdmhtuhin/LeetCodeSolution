# Time: 237 ms (15.789299999999994%), Space: 224 MB (5.262899999999989%)

# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    return [nums] if nums.length == 1
    nums.permutation(nums.length).to_a.uniq
end