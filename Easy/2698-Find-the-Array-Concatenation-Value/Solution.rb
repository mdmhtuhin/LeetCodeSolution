# Time: 123 ms (25%), Space: 210.9 MB (100%)

# @param {Integer[]} nums
# @return {Integer}
def find_the_array_conc_val(nums)
    return 0 if nums.length == 0
    return nums.first if nums.length == 1
    array_con = []
    l = nums.length - 1
    i = 0
    while i < l
        array_con << (nums[i].to_s + nums[l].to_s).to_i
        i += 1
        l -= 1
    end
    array_con << nums[i] if i == l
    array_con.sum
    
end