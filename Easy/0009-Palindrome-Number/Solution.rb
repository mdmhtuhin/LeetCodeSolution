# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x == x.to_s.reverse.to_i
end