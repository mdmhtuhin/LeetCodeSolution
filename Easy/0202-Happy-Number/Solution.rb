# Time: 89 ms (9.459400000000002%), Space: 211 MB (100%)

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    numbers = []
    while n != 1 && !numbers.include?(n)
        numbers << n
        n = get_next_n(n)
    end
    if n == 1
        true
    else
        false
    end
end

def get_next_n(n)
    sum = 0
    while n > 0
        d = n % 10;
        sum += d*d;
        n = n/10;
    end
    return sum;
end