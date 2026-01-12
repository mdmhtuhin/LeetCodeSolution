# Time: 145 ms (5.202200000000025%), Space: 223.2 MB (98.26599999999999%)

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    !(nums == nums.uniq)
end