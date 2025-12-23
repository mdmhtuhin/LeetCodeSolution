# @param {String} s
# @return {String}
def longest_palindrome(s)
    return s if s.length < 2
    return s if s == s.reverse
    longest = ""
    s.length.times do |i|
        odd = substring(s, i, i)
        longest = odd if odd.length > longest.length
        even = substring(s, i, i + 1)
        longest = even if even.length > longest.length
    end
    longest
end

def substring(string, left, right)
    while left >= 0 && right < string.length && string[left] == string[right]
      left -= 1
      right += 1
    end
    string[(left + 1)..(right - 1)]
end