//
//  BST+Contains.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    public func contains(key: Element.Key) -> Bool {
        guard case let .Node(left, me, right) = self else { return false }
        
        if key < me.key { return left.contains(key) }
        if key > me.key { return right.contains(key) }
        
        return true
    }
}

