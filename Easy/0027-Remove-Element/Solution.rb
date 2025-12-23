# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    return 0 if nums.length == 0
    k = 0
    i = 0
    while i < nums.length
        if nums[i] != val
            nums[k] = nums[i]
            k += 1
        end
        i += 1
    end
    k
end