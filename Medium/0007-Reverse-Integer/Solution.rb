# Time: 55 ms (81.03%), Space: 211.55 MB (43.10%)

# @param {Integer} x
# @return {Integer}
def reverse(x)
    # s = 0
    # if x > 0
    #     s = x.to_s.reverse.to_i
    # else
    #     s = -x.to_s.reverse.to_i
    # end
    s = reversee(x.abs).to_i
    s = x > 0 ? s : -s
    (s.between?((-2**31),(2**31) - 1)) ? s : 0

end

def reversee(x)
    return "" if x == 0
    r = x % 10
    x = x / 10
    r.to_s + reversee(x)
end