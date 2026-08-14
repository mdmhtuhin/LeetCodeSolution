# Time: 7 ms (100.00%), Space: 211.62 MB (100.00%)

# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
    count = Hash.new(0)
  left = 0
  max_length = 0

  s.each_char.with_index do |char, right|
    count[char] += 1

    while count[char] > 2
      count[s[left]] -= 1
      left += 1
    end

    max_length = [max_length, right - left + 1].max
  end

  max_length
end