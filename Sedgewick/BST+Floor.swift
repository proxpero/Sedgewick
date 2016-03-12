//
//  BST+Floor.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    
    private func _floor(key: Element.Key) -> Element? {
        guard case let .Node(_, me, _) = self else { return nil }
        
        if key == me.key {
            return me
        }
        
        if key <  me.key {
            guard case let .Node(left, _, _) = self else { return nil }
            return left._floor(key)
        }
        
        guard case let .Node(_, _, right) = self else {
            return me
        }
        
        if let r = right._floor(key) {
            return r
        }
        
        return me
    }
    
    /// returns the greatest `Element` less than or equal to `x`. If
    /// `x` is lower than any element in `self`, returns `nil`.
    public func floor(key: Element.Key) -> Element? {
        if let f = _floor(key) { return f }
        return nil
    }
}