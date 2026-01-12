# Time: 348 ms (5.513499999999978%), Space: 313.7 MB (5.263099999999993%)

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if t.length < s.length
    t.each_char do |c|
        return false if !s.include?(c)
        s.sub!(c,"")
    end
    return true
end