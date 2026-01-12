# Time: 91 ms (0%), Space: 211 MB (100%)

# @param {Integer} num
# @return {Integer}
def add_digits(num)
    sum = 0
    while num != 0
        sum += num % 10
        num /= 10
    end
    sum
    return sum if sum < 10
    add_digits(sum)
end