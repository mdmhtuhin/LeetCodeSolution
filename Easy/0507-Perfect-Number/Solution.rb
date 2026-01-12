# Time: 540 ms (0%), Space: 211.1 MB (100%)

# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
    return false if num % 2 != 0
    i = 1
    n = num / 2
    divisors = []
    while i <= n
        if num % i == 0
            divisors << i if !divisors.include?(i)
            divisors << n if !divisors.include?(n) && num % n == 0
            n = (num / i) if (num / i ) < n
        end
        i += 1

    end
    num == divisors.sum
end