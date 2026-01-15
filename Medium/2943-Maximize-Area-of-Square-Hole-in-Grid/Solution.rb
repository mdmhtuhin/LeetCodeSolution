# Time: 0 ms (%), Space:  (%)

# @param {Integer} n
# @param {Integer} m
# @param {Integer[]} h_bars
# @param {Integer[]} v_bars
# @return {Integer}
def maximize_square_hole_area(n, m, h_bars, v_bars)
      def max_consecutive_gap(bars)
    return 1 if bars.empty?

    bars.sort!
    max_len = 1
    curr_len = 1

    (1...bars.length).each do |i|
      if bars[i] == bars[i - 1] + 1
        curr_len += 1
      else
        curr_len = 1
      end
      max_len = [max_len, curr_len].max
    end

    # +1 because removing k consecutive bars creates (k+1) units gap
    max_len + 1
  end

  max_h = max_consecutive_gap(h_bars)
  max_v = max_consecutive_gap(v_bars)

  side = [max_h, max_v].min
  side * side
end