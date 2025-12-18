# Time: 3 ms (84.89%), Space: 211.42 MB (95.88%)

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x == x.to_s.reverse.to_i
end