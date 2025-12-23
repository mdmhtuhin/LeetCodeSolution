# Time: 304 ms (20.00%), Space: 231.10 MB (20.00%)

# @param {String} s
# @param {Integer[]} cost
# @return {Integer}
def min_cost(s, cost)
    min_cost = Float::INFINITY
    total_cost = cost.sum
    cost_of_chars = Hash.new(total_cost)
    s.each_char.with_index do |ch, index|
        cost_of_chars
    end

    cost_of_chars.each do |k, v|
        if v < min_cost
            min_cost = v
        end
    end
    min_cost
    
end