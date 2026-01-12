# Time: 68 ms (1.5267000000000053%), Space: 211.3 MB (100%)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    if nums.include?(target)
        return nums.find_index(target)
    else
        nums.push(target)
        nums.sort!
        return nums.find_index(target)
    end
end