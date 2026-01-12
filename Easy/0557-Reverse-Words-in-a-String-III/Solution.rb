# Time: 111 ms (11.764500000000012%), Space: 212.8 MB (94.1176%)

# @param {String} s
# @return {String}
def reverse_words(s)
    s = s.split(" ").collect {|c| c.reverse}
    s.join(" ")
end