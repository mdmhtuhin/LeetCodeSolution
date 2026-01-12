# Time: 23 ms (12.592600000000017%), Space: 213.2 MB (95.5556%)

# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
    repeat_count = {}
    nums.each do |num|
        repeat_count[num] = (repeat_count[num] || 0) + 1
    end
    repeat_count.max_by { |_, value| value }[0]
end