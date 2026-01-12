# Time: 0 ms (100%), Space: 211.3 MB (78.836%)

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    length = digits.length - 1
    while length >= 0
        if digits[length] < 9
            digits[length] += 1
            return digits
        end
        digits[length] = 0
        length -= 1
    end
    digits.unshift(1)
    digits
end