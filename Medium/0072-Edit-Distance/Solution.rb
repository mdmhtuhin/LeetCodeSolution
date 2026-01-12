# Time: 196 ms (11.110700000000021%), Space: 212.9 MB (94.4444%)

# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  m, n = word1.length, word2.length
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }
  (m + 1).times { |i| dp[i][0] = i }
  (n + 1).times { |j| dp[0][j] = j }
  (1..m).each do |i|
    (1..n).each do |j|
      if word1[i-1] == word2[j-1]
        dp[i][j] = dp[i-1][j-1]
      else
        dp[i][j] = 1 + [dp[i][j-1], dp[i-1][j], dp[i-1][j-1]].min
      end
    end
  end
  dp[m][n]
end
