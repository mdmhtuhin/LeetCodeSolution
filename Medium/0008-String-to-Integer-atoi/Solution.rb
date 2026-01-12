# Time: 9 ms (22.98839999999998%), Space: 211.4 MB (88.5057%)

# @param {String} s
# @return {Integer}
def my_atoi(s)
    num = ""
    s.each_char.with_index do |c, i|
        next if c == ' ' && num.empty?
        if numeric?(c) || c == "+" || c == "-"
            num += c
        else
            break
        end

    end
    num.to_i.between?((-(2**31)), (2**31) - 1) ? num.to_i : (num.to_i > 0 ? (2**31) - 1 : -(2**31) )
end
    
def numeric?(number)
  number =~ /[0-9]/
end

def letter?(letter)
  letter =~ /[A-Za-z]/
end