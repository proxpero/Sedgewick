//
//  RBT+Ceiling.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension RBT {
    
    private func _ceiling(key: Element.Key) -> Element? {
        guard case let .Node(me,_,_,_) = self else { return nil }
        
        if key == me.key {
            return me
        }
        
        if key >  me.key {
            guard case let .Node(_,_,_,right) = self else { return nil }
            return right._ceiling(key)
        }
        
        guard case let .Node(_,_,left,_) = self else { return me }
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