# Time: 99 ms (25%), Space: 211.7 MB (100%)

# @param {Integer[]} nums
# @return {Integer[]}
def left_rigth_difference(nums)
    answer = []
    left = []
    right = []
    i = 1
    l = nums.length - 1
    left[0] = 0
    right[l] = 0
    
    while i <= nums.length - 1 && l >= 0
        left[i] = left[i-1] + nums [i - 1]
        right[l-1] = right[l] + nums[l]
        i += 1
        l -= 1
    end
    for i in 0..nums.length - 1
        answer[i] = (left[i] - right[i]).abs
    end
    answer
end