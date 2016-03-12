//
//  Random.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

import Darwin

extension CollectionType where Index == Int {
    
    /// Return a random element from `self`
    public func randomElement() -> Generator.Element? {
        guard startIndex != endIndex else { return nil } // Empty Collection
        if count == 1 { return self[0] }
        return self[Int(arc4random_uniform(UInt32(endIndex)))]
    }
    
    /// Return a copy of `self` with its elements shuffled
    public func shuffle() -> [Generator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
    
    /// Return a random element from `self`
    public func random() -> Generator.Element? {
        if count == 0 { return nil }
        if count == 1 { return self[0] }
        
        return self[Int(arc4random_uniform(UInt32(count - 1)))]
    }
}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}

