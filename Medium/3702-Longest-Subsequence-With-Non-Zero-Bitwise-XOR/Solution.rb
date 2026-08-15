# Time: 64 ms (100.00%), Space: 234.34 MB (100.00%)

# @param {Integer[]} nums
# @return {Integer}
def longest_subsequence(nums)
    xor = 0

  nums.each do |num|
    xor ^= num
  end

  # If XOR of all elements is non-zero,
  # the entire array is the answer.
  return nums.length if xor != 0

  # If total XOR is zero, we can remove one
  # non-zero element to make the XOR non-zero.
  return nums.length - 1 if nums.any? { |num| num != 0 }

  # All elements are zero.
  0
end