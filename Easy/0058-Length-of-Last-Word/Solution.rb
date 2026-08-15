# Time: 0 ms (%), Space:  (%)

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    i = s.length - 1

  # Skip trailing spaces
  i -= 1 while i >= 0 && s[i] == ' '

  # Count characters of the last word
  length = 0

  while i >= 0 && s[i] != ' '
    length += 1
    i -= 1
  end

  length
end