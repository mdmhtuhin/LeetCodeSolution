# @param {String} s
# @return {Integer}
def roman_to_int(s)
    symbol_value = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000,
    }
    l = s.length - 1
    result = 0
    i = 0
    while i <= l
        if i == l
            result += symbol_value[s[i]]
            i += 1
        else
            if symbol_value[s[i]] < symbol_value[s[i + 1]]
                result += symbol_value[s[i+1]] - symbol_value[s[i]]
                i += 2
            else
                result += symbol_value[s[i]]
                i += 1
            end
        end
    end
    result
end