//
//  BST+Insert.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    
    private func _insert(new: Element) -> BST<Element> {
        
        guard case let .Node(left, me, right) = self else {
            return BST<Element>(new)
        }
        
        if new.key < me.key {
            return BST(me, left._insert(new), right)
        }
        
        if new.key > me.key {
            return BST(me, left, right._insert(new))
        }
        
        return self
    }
    
    public func insert(x: Element) -> BST {
        return _insert(x)
    }
    
}
