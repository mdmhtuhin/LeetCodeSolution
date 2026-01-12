# Time: 3 ms (79.2453%), Space: 211 MB (98.1132%)

# @param {Integer} n
# @return {Integer}
def num_of_ways(n)
    mod = 1_000_000_007
    same_diff = 6
    two_same  = 6
    (2..n).each do
        new_same_diff = (2 * same_diff + 2 * two_same) % mod
        new_two_same  = (2 * same_diff + 3 * two_same) % mod
        same_diff = new_same_diff
        two_same  = new_two_same
    end
    (same_diff + two_same) % mod
end