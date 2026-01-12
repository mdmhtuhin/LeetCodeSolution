# Time: 15 ms (35.71429999999999%), Space: 213.4 MB (27.1429%)

# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    length = nums.length
    left = 0
    right = length - 1
    index = length - 1
    sorted_nums = [0] * length
    while left <= right
        left_sq = nums[left] * nums[left]
        right_sq = nums[right] * nums[right]
        if left_sq > right_sq
            sorted_nums[index] = left_sq
            left += 1
        else
            sorted_nums[index] = right_sq
            right -= 1
        end
        index -= 1
    end
    sorted_nums
end