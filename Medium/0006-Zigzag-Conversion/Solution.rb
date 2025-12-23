# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1
    zigzag = Array.new(num_rows) {""}
    conv = ""
    length = s.length
    s = s.reverse.split("")
    j = 1
    while length  >= j
        if j % 2 == 0
            i = num_rows - 2
            while i >= 0 && s.size > 0
                zigzag[i] << s.pop() if s.size > 0
                i -= 1
            end
        else
            zigzag.each_with_index do |row, i|
                if j > 1 && i > 0
                    row << s.pop() if s.size > 0
                end
                if j == 1
                    row << s.pop() if s.size > 0
                end
            end
        end
        j += 1
    end
    zigzag.each {|s| conv += s }
    conv
end