# Time: 3 ms (81.8414%), Space: 211.4 MB (82.8644%)

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x == x.to_s.reverse.to_i
end