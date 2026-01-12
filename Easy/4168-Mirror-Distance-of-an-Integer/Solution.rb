# Time: 0 ms (100%), Space: 211.4 MB (32%)

# @param {Integer} n
# @return {Integer}
def mirror_distance(n)
    reverse_num = n.to_s.reverse.to_i
    (reverse_num - n).abs
end