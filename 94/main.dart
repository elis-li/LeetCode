class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];
    _inorderHelper(root, result);
    return result;
  }

  void _inorderHelper(TreeNode? node, List<int> result) {
    if (node == null) {
      return;
    }
    _inorderHelper(node.left, result);
    result.add(node.val); 
    _inorderHelper(node.right, result); 
  }
}

void main() {
  TreeNode root = TreeNode(1, null, TreeNode(2, TreeNode(3), null));
  Solution solution = Solution();
  List<int> result = solution.inorderTraversal(root);
  print(result);
}