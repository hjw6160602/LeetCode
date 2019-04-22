//
//  main.swift
//  0. Traverse BinaryTree
//
//  Created by 江雪 on 2019/4/21.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

let tree = BinaryTree()
let array = tree.initializeInput("[5, 1, 4, 2, 11, 3, 6]")
//let array = tree.initializeInput("[2,1,3]")
let root = tree.generateBinaryTreeFromArray(array)
//tree.preorderTraversal(root: root)
//tree.inorderTraversal(root: root)
tree.postorderTraversal(root: root)

for node in tree.traversalResult {
    print(node.val)
}
