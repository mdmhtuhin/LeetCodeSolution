# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    parenthesis = { ')' => '(', '}' => '{', ']' => '[' }
    s.each_char do |char|
        if parenthesis.values.include?(char)
            stack.push(char)
        elsif parenthesis.keys.include?(char)
            return false if stack.empty? || stack.pop != parenthesis[char]
        end
    end
    stack.empty?
end