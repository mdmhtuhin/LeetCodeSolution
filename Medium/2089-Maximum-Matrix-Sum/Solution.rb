# Time: 55 ms (97.05879999999999%), Space: 233.1 MB (44.11749999999999%)

# @param {Integer[][]} matrix
# @return {Integer}
def max_matrix_sum(matrix)
    total_abs_sum = 0
    negative_count = 0
    min_abs = Float::INFINITY

    matrix.each do |row|
        row.each do |value|
            abs_val = value.abs
            total_abs_sum += abs_val
            negative_count += 1 if value < 0
            min_abs = [min_abs, abs_val].min
        end
    end

    if negative_count.even?
        total_abs_sum
    else
        total_abs_sum - 2 * min_abs
    end
end