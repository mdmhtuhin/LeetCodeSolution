# Time: 0 ms (60.00%), Space: 227.83 MB (80.00%)

# @param {String} s
# @param {Integer[]} cost
# @return {Integer}
def min_cost(s, cost)
    total_cost = cost.sum
    cost_of_chars = Hash.new(total_cost)
    s.each_char.with_index do |ch, index|
        cost_of_chars[ch] -= cost[index]
    end

    cost_of_chars.val
    
end