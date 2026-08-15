# Time: 0 ms (100.00%), Space: 211.13 MB (71.28%)

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    one_step = 1
  two_steps = 1

  (2..n).each do
    one_step, two_steps = two_steps, one_step + two_steps
  end

  two_steps
end