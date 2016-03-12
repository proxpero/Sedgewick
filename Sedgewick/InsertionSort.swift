//
//  InsertionSort.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/29/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension MutableCollectionType where Self.Generator.Element : Comparable {
    
    /// Return a new sorted collection of the elements in `source`
    /// using [Insertion Sort](https://en.wikipedia.org/wiki/Insertion_sort).
    ///
    /// Complexity O(n^2).
    @warn_unused_result(mutable_variant="insertionSortInPlace")
    public func insertionSort() -> Self {
        
        var output = self
        
        for primaryIndex in output.indices {
            
            for secondaryIndex in (startIndex.successor() ... primaryIndex).reverse() {
                
                if output[secondaryIndex] < output[secondaryIndex.advancedBy(-1)] {
                    swap(&output[secondaryIndex], &output[secondaryIndex.advancedBy(-1)])
                }
                
            }
            
        }
        
        return output
        
    }
    
    /// Sort `self` in-place using [Insertion Sort](https://en.wikipedia.org/wiki/Insertion_sort).
    ///
    /// Complexity O(n^2).
    public mutating func insertionSortInPlace() {
        
        for primaryIndex in self.indices {
            
            for secondaryIndex in (startIndex.successor() ... primaryIndex).reverse() {
                
                if self[secondaryIndex] < self[secondaryIndex.advancedBy(-1)] {
                    swap(&self[secondaryIndex], &self[secondaryIndex.advancedBy(-1)])
                }
                
            }
            
        }
    }
}
