# Time: 0 ms (%), Space:  (%)

# @param {Integer[][]} squares
# @return {Float}
def separate_squares(squares)
     events = []
  xs = []

  squares.each do |x, y, l|
    x1 = x.to_f
    x2 = (x + l).to_f
    y1 = y.to_f
    y2 = (y + l).to_f

    events << [y1, 1, x1, x2]
    events << [y2, -1, x1, x2]

    xs << x1 << x2
  end

  xs.sort!.uniq!
  x_index = xs.each_with_index.to_h
  events.sort_by!(&:first)

  # -------- First sweep: compute total union area --------
  st = SegmentTree.new(xs)
  total_area = 0.0
  prev_y = events[0][0]

  events.each do |y, type, x1, x2|
    dy = y - prev_y
    total_area += st.covered_length * dy
    st.update(1, 0, xs.length - 1, x_index[x1], x_index[x2], type)
    prev_y = y
  end

  target = total_area / 2.0

  # -------- Second sweep: find minimal Y --------
  st = SegmentTree.new(xs)
  area = 0.0
  prev_y = events[0][0]

  events.each do |y, type, x1, x2|
    dy = y - prev_y
    slice = st.covered_length * dy

    if area + slice >= target
      return prev_y + (target - area) / st.covered_length
    end

    area += slice
    st.update(1, 0, xs.length - 1, x_index[x1], x_index[x2], type)
    prev_y = y
  end

  prev_y
end

class SegmentTree
  def initialize(xs)
    @xs = xs
    @n = xs.length - 1
    @count = Array.new(4 * @n, 0)
    @length = Array.new(4 * @n, 0.0)
  end

  def update(node, l, r, ql, qr, val)
    return if qr <= l || r <= ql

    if ql <= l && r <= qr
      @count[node] += val
    else
      mid = (l + r) / 2
      update(node * 2, l, mid, ql, qr, val)
      update(node * 2 + 1, mid, r, ql, qr, val)
    end

    if @count[node] > 0
      @length[node] = @xs[r] - @xs[l]
    else
      @length[node] =
        if r - l == 1
          0.0
        else
          @length[node * 2] + @length[node * 2 + 1]
        end
    end
  end

  def covered_length
    @length[1]
  end
end