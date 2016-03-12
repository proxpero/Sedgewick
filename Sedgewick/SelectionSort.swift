//
//  SelectionSort.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/29/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension MutableCollectionType where Self.Generator.Element : Comparable {
    
    /// Return a new sorted collection of the elements in `source`
    /// using [Selection Sort](https://en.wikipedia.org/wiki/Selection_sort).
    ///
    /// Complexity O(n^2).
    @warn_unused_result(mutable_variant="selectionSortInPlace")
    public func selectionSort() -> Self {
        
        var output = self
        
        for primaryIndex in self.indices {
            
            var minimum = primaryIndex
            
            for secondaryIndex in primaryIndex.successor() ..< output.endIndex {
                
                if output[minimum] > output[secondaryIndex] {
                    minimum = secondaryIndex
                }
                
            }
            
            if primaryIndex != minimum {
                swap(&output[primaryIndex], &output[minimum])
            }
            
        }
        
        return output
    }
    
    /// Sort `self` in-place using [Selection Sort](https://en.wikipedia.org/wiki/Selection_sort).
    ///
    /// Complexity O(n^2).
    public mutating func selectionSortInPlace() {
        
        for primaryIndex in self.indices {
            
            var minimum = primaryIndex
            
            for secondaryIndex in primaryIndex.successor() ..< self.endIndex {
                if self[minimum] > self[secondaryIndex] {
                    minimum = secondaryIndex
                }
            }
            
            if primaryIndex != minimum {
                swap(&self[primaryIndex], &self[minimum])
            }
            
        }
    }
}