# Time: 38 ms (74.99989999999998%), Space: 225.4 MB (49.99989999999996%)

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
MOD = 1_000_000_007

def max_product(root)
  # Step 1: Calculate total sum of tree
  total_sum = tree_sum(root)

  @max_product = 0

  # Step 2: Calculate subtree sums and try all splits
  dfs(root, total_sum)

  @max_product % MOD
end

def tree_sum(node)
  return 0 if node.nil?

  node.val + tree_sum(node.left) + tree_sum(node.right)
end

def dfs(node, total_sum)
  return 0 if node.nil?

  left_sum  = dfs(node.left, total_sum)
  right_sum = dfs(node.right, total_sum)

  subtree_sum = node.val + left_sum + right_sum

  # Try splitting here
  product = subtree_sum * (total_sum - subtree_sum)
  @max_product = [@max_product, product].max

  subtree_sum
end
