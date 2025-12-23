# Time: 327 ms (20.00%), Space: 242.50 MB (%)

# @param {String} s
# @param {Integer[]} cost
# @return {Integer}
def min_cost(s, cost)
    min_cost = Float::INFINITY
    cost_of_chars = {}
    i = 0
    total_cost = cost.sum
    s.ew.each_with_index do |ch, index|
        if cost_of_chars.keys.include?(ch)
            cost_of_chars[ch] -= cost[index]
        else
            cost_of_chars[ch] = total_cost - cost[index]
        end
    end

    cost_of_chars.each do |k, v|
        if v < min_cost
            min_cost = v
        end
    end
    min_cost
    
end