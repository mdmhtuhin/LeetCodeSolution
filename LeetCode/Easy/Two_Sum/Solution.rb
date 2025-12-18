# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    l = nums.length - 1
    i = 0
    while i < l
        j = l
        while j > i
            if (nums[i] + nums[j]) == target
                return [i,j]
            end
            j -= 1
        end
        i += 1
    end
end