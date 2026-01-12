# Time: 98 ms (0%), Space: 211.1 MB (100%)

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
# @return {TreeNode}
def invert_tree(root)
    return nil if root.nil?
    invert_tree(root.left)
    invert_tree(root.right)
    temp = root.left
    root.left = root.right;
    root.right = temp;
    root
end

def invert(new_tree, root)
    if !root.right.nil?
        invert_left( new_tree, root.right)
        invert(new_tree, root.right)
    end
    if !root.left.nil?
        invert_right( new_tree, root.left)
        invert(new_tree, root.left)
    end
    new_tree
end

def invert_left(new_tree, root)
    new_tree.left.push(root.val)
    new_tree
end

def invert_right(new_tree, root)
    new_tree.right.push(root.val )
    new_tree
end