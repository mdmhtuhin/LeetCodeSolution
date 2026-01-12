# Time: 39 ms (100%), Space: 217.1 MB (47.82609999999999%)

# @param {Character[][]} matrix
# @return {Integer}
def maximal_rectangle(matrix)
  return 0 if matrix.empty?

  cols = matrix[0].length
  heights = Array.new(cols, 0)
  max_area = 0

  matrix.each do |row|
    # Build histogram
    (0...cols).each do |c|
      if row[c] == "1"
        heights[c] += 1
      else
        heights[c] = 0
      end
    end

    # Calculate max area in histogram
    max_area = [max_area, largest_rectangle_area(heights)].max
  end

  max_area
end

def largest_rectangle_area(heights)
  stack = []
  max_area = 0
  heights << 0  # sentinel

  heights.each_with_index do |h, i|
    while !stack.empty? && heights[stack[-1]] > h
      height = heights[stack.pop]
      width = stack.empty? ? i : i - stack[-1] - 1
      max_area = [max_area, height * width].max
    end
    stack << i
  end

  heights.pop
  max_area
end
