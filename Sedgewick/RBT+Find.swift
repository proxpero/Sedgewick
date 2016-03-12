//
//  RBT+Find.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension RBT {
    
    public func find(key: Element.Key) -> RBT? {
        
        guard case let .Node(me,_,left,right) = self else { return nil }
        
        if key < me.key { return left.find(key) }
        if key > me.key { return right.find(key) }
        
        return self
    }
}