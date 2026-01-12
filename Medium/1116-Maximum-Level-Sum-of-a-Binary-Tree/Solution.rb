# Time: 22 ms (93.4066%), Space: 215.3 MB (58.24179999999999%)

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_level_sum(root)
    queue = [root]
    level = 1
    best_level = 1
    max_sum = -Float::INFINITY

    while !queue.empty?
        level_sum = 0
        size = queue.length

        size.times do
            node = queue.shift
            level_sum += node.val
            queue << node.left if node.left
            queue << node.right if node.right
        end

        if level_sum > max_sum
            max_sum = level_sum
            best_level = level
        end

        level += 1
    end

    best_level
end