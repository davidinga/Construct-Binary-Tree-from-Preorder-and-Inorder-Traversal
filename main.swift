/*
Given two integer arrays preorder and inorder where preorder is the preorder traversal of a binary tree and inorder is the inorder traversal of the same tree, construct and return the binary tree.
*/

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    guard preorder.count > 0, inorder.count > 0 else { return nil }
    let root = TreeNode(preorder[0])
    let mid = inorder.firstIndex(of: preorder[0])!
    root.left = buildTree(Array(preorder[1..<(mid+1)]), Array(inorder[..<mid]))
    root.right = buildTree(Array(preorder[(mid+1)...]), Array(inorder[(mid+1)...]))
    return root
}