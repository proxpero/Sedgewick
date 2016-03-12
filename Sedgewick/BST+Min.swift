//
//  BST+Min.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST {
    
    private func _min() -> Element? {
        if case let .Node(left, me, _) = self {
            if let min = left._min() {
                return min
            }
            return me
        }
        return nil
    }
    
    public func min() -> Element {
        guard case let .Node(left, me, _) = self else { fatalError() }
        if let min = left._min() {
            return min
        }
        return me
    }
}