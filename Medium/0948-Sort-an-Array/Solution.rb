# Time: 932 ms (16.667000000000016%), Space: 222.1 MB (25.000300000000017%)

# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
    return nums if nums.length <= 1
    
    mid = nums.length / 2
    left = sort_array(nums[0...mid])
    right = sort_array(nums[mid..-1])
    
    merge(left, right)
end

def merge(left, right)
    result = []
    
    while !left.empty? && !right.empty?
        if left[0] < right[0]
            result << left.shift
        else
            result << right.shift
        end
    end
    
    result += left if !left.empty?
    result += right if !right.empty?
    
    result
end
