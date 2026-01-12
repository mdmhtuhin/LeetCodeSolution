# Time: 0 ms (100.00%), Space: 211.64 MB (33.33%)

# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
    total_time = 0

  (1...points.length).each do |i|
    x1, y1 = points[i - 1]
    x2, y2 = points[i]

    dx = (x2 - x1).abs
    dy = (y2 - y1).abs

    total_time += [dx, dy].max
  end

  total_time
end