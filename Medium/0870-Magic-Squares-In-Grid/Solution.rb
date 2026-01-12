# Time: 0 ms (100%), Space: 211.4 MB (84%)

# @param {Integer[][]} grid
# @return {Integer}
def num_magic_squares_inside(grid)
    rows = grid.length
    cols = grid[0].length
    magic_square = 0
    return 0 if rows < 3 || cols < 3
    (0..rows - 3).each do |i|
        (0..cols - 3).each do |j|
         magic_square += 1 if is_magic( i, j,grid)
        end
    end

  magic_square

end

def is_magic(r, c, grid)
    return false if grid[r + 1][c + 1] != 5
    seen = {}

    (r...(r + 3)).each do |i|
      (c...(c + 3)).each do |j|
        val = grid[i][j]
        return false if val < 1 || val > 9 || seen[val]
        seen[val] = true
      end
    end

    # Rule 3: opposite cells must sum to 10
    return false if
      grid[r][c]     + grid[r + 2][c + 2] != 10 ||
      grid[r][c + 2] + grid[r + 2][c]     != 10 ||
      grid[r][c + 1] + grid[r + 2][c + 1] != 10 ||
      grid[r + 1][c] + grid[r + 1][c + 2] != 10

    # Rule 4: rows and columns sum to 15
    3.times do |i|
      return false if
        grid[r + i][c] + grid[r + i][c + 1] + grid[r + i][c + 2] != 15 ||
        grid[r][c + i] + grid[r + 1][c + i] + grid[r + 2][c + i] != 15
    end

    # Diagonals
    return false if
      grid[r][c]     + grid[r + 1][c + 1] + grid[r + 2][c + 2] != 15 ||
      grid[r][c + 2] + grid[r + 1][c + 1] + grid[r + 2][c]     != 15

    true

end