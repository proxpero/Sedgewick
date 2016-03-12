//
//  BST+Ceiling.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    
    private func _ceiling(key: Element.Key) -> Element? {
        guard case let .Node(_, me, _) = self else { return nil }
        
        if key == me.key { return me }
        
        if key >  me.key {
            guard case let .Node(_, _, right) = self else { return nil }
            return right._ceiling(key)
        }
        
        guard case let .Node(left, _, _) = self else { return me }
        if let l = left._ceiling(key) { return l }
        return me
        
    }
    
    /// returns the least `Element` greater than or equal to `x`.
    /// If `x` is higher than any BSTElement in `self`, returns `nil`.
    public func ceiling(key: Element.Key) -> Element? {
        if let c = _ceiling(key) { return c }
        return nil
    }
}