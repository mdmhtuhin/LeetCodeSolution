# Time: 0
ms (100.00%), Space: 211.55
MB (61.81%)

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x == x.to_s.reverse.to_i
end