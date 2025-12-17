1# @param {String} s
2# @return {Boolean}
3def is_valid(s)
4    stack = []
5    parenthesis = { ')' => '(', '}' => '{', ']' => '[' }
6    s.each_char do |char|
7        if parenthesis.values.include?(char)
8            stack.push(char)
9        elsif parenthesis.keys.include?(char)
10            return false if stack.empty? || stack.pop != parenthesis[char]
11        end
12    end
13    stack.empty?
14end