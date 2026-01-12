# Time: 171 ms (22.0583%), Space: 216.7 MB (38.234899999999996%)

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_dot_product(nums1, nums2)
    n = nums1.length
    m = nums2.length

    # Initialize DP table with very small numbers
    dp = Array.new(n) { Array.new(m, -Float::INFINITY) }

    (0...n).each do |i|
        (0...m).each do |j|
        product = nums1[i] * nums2[j]

        # Case 1: start a new subsequence
        dp[i][j] = product

        # Case 2: extend previous subsequence
        if i > 0 && j > 0
            dp[i][j] = [dp[i][j], product + dp[i-1][j-1]].max
        end

        # Case 3: skip nums1[i]
        if i > 0
            dp[i][j] = [dp[i][j], dp[i-1][j]].max
        end

        # Case 4: skip nums2[j]
        if j > 0
            dp[i][j] = [dp[i][j], dp[i][j-1]].max
        end
        end
    end

    dp[n-1][m-1]
end