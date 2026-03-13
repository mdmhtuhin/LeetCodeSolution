# Time: 0 ms (100.00%), Space: 211.38 MB (84.29%)

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return x if x < 2

  left = 1
  right = x / 2
  ans = 0

  while left <= right
    mid = left + (right - left) / 2

    if mid * mid == x
      return mid
    elsif mid * mid < x
      ans = mid
      left = mid + 1
    else
      right = mid - 1
    end
  end

  ans
end