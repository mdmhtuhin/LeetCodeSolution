# Time: 0 ms (%), Space:  (%)

# @param {Integer[][]} squares
# @return {Float}
def separate_squares(squares)
     total_area = squares.sum { |_, _, l| l * l }
  target = total_area / 2.0

  min_y = squares.map { |_, y, _| y }.min
  max_y = squares.map { |_, y, l| y + l }.max

  left = min_y.to_f
  right = max_y.to_f

  60.times do  # enough iterations for 1e-6 precision
    mid = (left + right) / 2.0
    area = 0.0

    squares.each do |_, y, l|
      height = [[mid - y, 0].max, l].min
      area += height * l
    end

    if area < target
      left = mid
    else
      right = mid
    end
  end

  left
end