# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
 return "" if strs.empty?

  sorted_strings = strs.sort

  first_string = sorted_strings.first
  last_string = sorted_strings.last

  common_prefix = ""
  min_length = [first_string.length, last_string.length].min

  min_length.times do |i|
    if first_string[i] == last_string[i]
      common_prefix += first_string[i]
    else
      break
    end
  end

  common_prefix
end