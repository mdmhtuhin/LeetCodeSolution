# Time: 460 ms (33.33340000000006%), Space: 212.5 MB (52.5253%)

# @param {Integer[]} nums
# @return {Integer}
def sum_four_divisors(nums)
    sum_of_divisors = 0
    nums.each do |n|
        result = divisors(n)
        if result.length == 4
            sum_of_divisors += result.sum
        end
    end
    sum_of_divisors
end

def divisors(n)
  result = []

  (1..Math.sqrt(n)).each do |i|
    if n % i == 0
      result << i
      result << n / i if i != n / i
    end
    break if result.length > 4
  end
  result
end