//
//  RBT+Contains.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/25/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension RBT {
    
    func contains(key: Element.Key) -> Bool {
        
        guard case let .Node(me,_,left,right) = self else { return false }
        
        if key < me.key { return left.contains(key) }
        if key > me.key { return right.contains(key) }
        
        return true
    }
    
}