# Time: 84 ms (2.5%), Space: 211.3 MB (100%)

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    # matrix.flatten.include?(target)
    return false if matrix.nil?
    m, n = matrix.length, matrix[0].length
    i, j = 0, n - 1
    while i < m && j >= 0
        if matrix[i][j] == target
            return true
        elsif matrix[i][j] < target
            i += 1
        else
            j -= 1
        end
    end
    return false
end