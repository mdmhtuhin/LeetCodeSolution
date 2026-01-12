# Time: 184 ms (58.82329999999998%), Space: 227.7 MB (94.1176%)

# @param {String} s
# @param {Integer[]} cost
# @return {Integer}
def min_cost(s, cost)
    total_cost = cost.sum
    cost_of_chars = Hash.new(total_cost)
    s.each_char.with_index do |ch, index|
        cost_of_chars[ch] -= cost[index]
    end

    cost_of_chars.values.min
    
end