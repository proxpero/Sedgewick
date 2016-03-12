//
//  RBT+Min.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/25/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension RBT {
    
    private func _min() -> Element? {
        if case let .Node(me,_,left,_) = self {
            if let min = left._min() {
                return min
            }
            return me
        }
        return nil
    }
    
    public func min() -> Element {
        guard case let .Node(me,_,left,_) = self else { fatalError() }
        if let min = left._min() {
            return min
        }
        return me
    }
    
}