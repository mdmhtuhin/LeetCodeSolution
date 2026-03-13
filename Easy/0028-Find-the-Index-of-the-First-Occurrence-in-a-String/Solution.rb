# Time: 0 ms (%), Space:  (%)

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    n = haystack.length
    m = needle.length

    (0..n - m).each do |i|
      return i if haystack[i, m] == needle
    end

    -1
end