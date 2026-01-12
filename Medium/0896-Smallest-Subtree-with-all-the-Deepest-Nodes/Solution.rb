# Time: 0 ms (100%), Space: 211.6 MB (35.59330000000001%)

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
def subtree_with_all_deepest(root)
  dfs(root)[1]
end

def dfs(node)
  return [0, nil] if node.nil?

  left_depth, left_node = dfs(node.left)
  right_depth, right_node = dfs(node.right)

  if left_depth > right_depth
    [left_depth + 1, left_node]
  elsif right_depth > left_depth
    [right_depth + 1, right_node]
  else
    [left_depth + 1, node]
  end
end