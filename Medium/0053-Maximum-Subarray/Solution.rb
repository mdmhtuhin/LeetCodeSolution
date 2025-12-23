# Time: 155 ms (%), Space: 219.2 MB (%)

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_sum = nums[0]
    initial = 0
    nums.each { |num| max_sum = [max_sum , initial = [num, initial + num].max ].max }
    max_sum
end