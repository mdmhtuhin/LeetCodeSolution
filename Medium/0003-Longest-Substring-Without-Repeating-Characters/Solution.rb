# Time: 140 ms (30.24%), Space: 211.53 MB (84.27%)

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    sub = []
    l = s.length
    i = 0
    j = 0
    length = 0
    while i < l && j < l
        if !sub.include?(s[j])
            sub.push(s[j])
            length = [ length, sub.size].max
            j += 1
         else
             sub.delete(s[i])
             i += 1

         end
            
    end
    

    return length
end