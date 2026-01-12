# Time: 91 ms (7.142799999999988%), Space: 211.1 MB (100%)

# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
    x = 0
    operations.each do |op|
        if op.include?("++")
            x += 1
        else
            x -= 1
        end
    end
    x
            
end