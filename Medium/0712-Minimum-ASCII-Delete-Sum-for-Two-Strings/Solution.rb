# Time: 366 ms (65.38419999999994%), Space: 220.7 MB (57.692099999999975%)

# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_delete_sum(s1, s2)
    m, n = s1.length, s2.length
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }

  (1..m).each do |i|
    (1..n).each do |j|
      if s1[i - 1] == s2[j - 1]
        dp[i][j] = dp[i - 1][j - 1] + s1[i - 1].ord
      else
        dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
      end
    end
  end

  total = s1.bytes.sum + s2.bytes.sum
  total - 2 * dp[m][n]
end