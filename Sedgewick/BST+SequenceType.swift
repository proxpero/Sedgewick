//
//  BST+SequenceType.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST: SequenceType {
    
    public func generate() -> AnyGenerator<Element> {
        var stack: [BST] = []
        var current: BST = self
        
        return anyGenerator { _ -> Element? in
            
            while true {
                
                if case let .Node(left,_,_) = current {
                    stack.append(current)
                    current = left
                }
                    
                else if !stack.isEmpty, case let .Node(_,x,right) = stack.removeLast() {
                    current = right
                    return x
                }
                    
                else {
                    return nil
                }
            }
        }
    }
}