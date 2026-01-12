# Time: 130 ms (15.3844%), Space: 211.6 MB (100%)

# @param {Character[]} chars
# @return {Integer}
def compress(chars)
    return 1 if chars.length == 1
    s = []
    n = chars.length 
    length = 0
    i = 1
    count = 1
    (1..chars.size).each do |i|
        if chars[i] == chars [i-1] && i < chars.size
            count += 1
        else
            chars[length] = chars[i-1]
            length += 1
            if count > 1
                count.to_s.each_char do |c|
                    chars[length] = c
                    length += 1
                end
            end
            count = 1
        end
        i += 1
    end
    length
    
end