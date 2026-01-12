# Time: 103 ms (100%), Space: 217.8 MB (100%)

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

def find_duplicate_subtrees(root)
    @map = {}
    @result = []
    traverse(root)
    return @result
end

def traverse(node)
    return "#" if node.nil?
    left = traverse(node.left)
    right = traverse(node.right)
    subtree = "#{node.val},#{left},#{right}"
    if @map[subtree].nil?
        @map[subtree] = 1
    elsif @map[subtree] == 1
        @result.push(node)
        @map[subtree] += 1
    end
    return subtree
end
