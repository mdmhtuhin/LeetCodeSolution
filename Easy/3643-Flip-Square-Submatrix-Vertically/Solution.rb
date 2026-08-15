# Time: 0 ms (%), Space:  (%)

# @param {Integer[][]} gridvvvvvvvv
# @param {Integer} xvv
# @param {Integer} y
# @param {Integer} k
# @return {Integer[][]}
def reverse_submatrix(grid, x, y, k)
    top = x
  bottom = x + k - 1

  while top < bottom
    k.times do |j|
      grid[top][y + j], grid[bottom][y + j] =
        grid[bottom][y + j], grid[top][y + j]
    end

    top += 1
    bottom -= 1
  end

  grid
end