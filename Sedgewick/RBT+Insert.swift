//
//  RBT+Insert.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension RBT {
    
    private func _balance() -> RBT<Element> {
        
        switch self {
            
//        case let .Node(z, .Black, .Node(y, .Red, .Node(x, .Red, a, b), c), d):
//            return .Node(y, .Red, .Node(x, .Black, a, b), .Node(z, .Black, c, d))
//            
//        case let .Node(z, .Black, .Node(x, .Red, a, .Node(y, .Red, b, c)), d):
//            return .Node(y, .Red, .Node(x, .Black, a, b), .Node(z, .Black, c, d))
//            
//        case let .Node(x, .Black, a, .Node(z, .Red, .Node(y,.Red, b, c), d)):
//            return .Node(y, .Red, .Node(x, .Black, a, b), .Node(z, .Black, c, d))
//            
//        case let .Node(x, .Black, a, .Node(y, .Red, b, .Node(z, .Red, c, d))):
//            return .Node(y, .Red, .Node(x, .Black, a, b), .Node(z, .Black, c, d))
//            
        default:
            return self
        }
        
    }
    
    private func _insert(new: Element) -> RBT<Element> {
        
        guard case let .Node(me, _, left, right) = self else {
            return RBT<Element>(new)
        }
        
        if new.key < me.key {
            return RBT(me, .Black, left._insert(new), right) // ._balance()
        }
        
        if new.key > me.key {
            return RBT(me, .Black, left, right._insert(new)) // ._balance()
        }
        
        return self
    }
    
    public func insert(x: Element) -> RBT {
        return _insert(x)
    }
    
}
