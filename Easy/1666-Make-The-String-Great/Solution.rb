# Time: 131 ms (0%), Space: 211.1 MB (100%)

# @param {String} s
# @return {String}
def make_good(s)
    i = 0
    while i < s.length - 1
        if (s[i] != s[ i + 1 ]) && (s[i].upcase == s [i+1] || s[i].downcase == s[i + 1])
            s = s.slice(0, i) + s.slice(i+2,s.length - 1)
            i = 0
        else
            i += 1
        end
    end
    s
end