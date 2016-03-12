//
//  RBT+Max.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension RBT {
    
    private func _max() -> Element? {
        if case let .Node(me,_,_,right) = self {
            if let max = right._max() {
                return max
            }
            return me
        }
        return nil
    }
    
    public func max() -> Element {
        guard case let .Node(me,_,_,right) = self else { fatalError() }
        if let max = right._max() {
            return max
        }
        return me
    }
    
}
