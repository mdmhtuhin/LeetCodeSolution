# Time: 127 ms (5.554900000000024%), Space: 214.1 MB (100%)

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
    n = 0
    m = nums.length
    while n < m
        while nums[n] >= 1 && nums[n] <= m && nums[n] != nums[nums[n] - 1]
            temp = nums[nums[n] - 1]
            nums[nums[n] - 1] = nums[n]
            nums[n] = temp
        end
        n += 1
    end
    n = 0
    while n < m
        if nums[n] != n + 1
            return n + 1
        end
        n += 1
    end
    
    return m + 1
end