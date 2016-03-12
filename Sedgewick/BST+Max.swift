//
//  BST+Max.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    
    private func _max() -> Element? {
        if case let .Node(_, me, right) = self {
            if let max = right._max() {
                return max
            }
            return me
        }
        return nil
    }
    
    public func max() -> Element {
        guard case let .Node(_, me, right) = self else { fatalError() }
        if let max = right._max() {
            return max
        }
        return me
    }
}
