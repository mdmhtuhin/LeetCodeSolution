# Time: 31 ms (85.7143%), Space: 219.3 MB (89.79599999999999%)

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_sum = nums[0]
    initial = 0
    nums.each { |num| max_sum = [max_sum , initial = [num, initial + num].max ].max }
    max_sum
end