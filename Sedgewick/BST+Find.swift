//
//  BST+Find.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    
    public func find(key: Element.Key) -> BST? {
        
        guard case let .Node(left, me, right) = self else { return nil }
        
        if key < me.key { return left.find(key) }
        if key > me.key { return right.find(key) }
        
        return self
    }
}