# Time: 71 ms (0%), Space: 211.1 MB (85.7143%)

# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    pairs = 0
    i = 0
    n = nums.length - 1
    while i < n
        for j in i+1..n
            if nums[i] == nums[j] && i < j
                pairs += 1
            end
        end
        i += 1
    end
    pairs
end