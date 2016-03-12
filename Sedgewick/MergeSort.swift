//
//  MergeSort.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/29/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension Array where Element : Comparable {
    
    private func merge(var left: Array<Element>, var _ right: Array<Element>) -> Array<Element> {
        
        var result: Array<Element> = []
        
        while !left.isEmpty && !right.isEmpty {
            
            if left[startIndex] <= right[startIndex] {
                result.append(left.removeFirst())
            } else {
                result.append(right.removeFirst())
            }
            
        }
        
        if !left.isEmpty {
            result.appendContentsOf(left)
        }
        
        if !right.isEmpty {
            result.appendContentsOf(right)
        }
        
        return result
        
    }
    
    
    public func mergeSort() -> Array<Element> {
        
        guard count > 1 else { return self }
        
        let mid = count / 2
        
        return merge(
            Array(self[startIndex..<mid]).mergeSort(),
            Array(self[mid ..< endIndex]).mergeSort()
        )
    }
    
}
