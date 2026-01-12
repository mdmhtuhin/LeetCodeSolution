# Time: 8 ms (11.818200000000001%), Space: 213.4 MB (32.72730000000001%)

# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
    negetive_count = 0
    grid.each do |row|
        row.each do |n|
            if n < 0
                negetive_count += 1
            end
        end
    end
    negetive_count
end