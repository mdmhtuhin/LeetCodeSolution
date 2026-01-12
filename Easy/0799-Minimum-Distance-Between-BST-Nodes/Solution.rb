# Time: 104 ms (0%), Space: 211.1 MB (100%)

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
def min_diff_in_bst(root)
    @prev = nil
    @min_diff = Float::INFINITY
    inorder(root)
    return @min_diff
end

def inorder(root)
    if root.nil?
        return
    end

    inorder(root.left)

    if @prev != nil
        @min_diff = [@min_diff, root.val - @prev].min
    end

    @prev = root.val

    inorder(root.right)
end