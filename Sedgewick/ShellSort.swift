//
//  ShellSort.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/29/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension MutableCollectionType where Self.Generator.Element : Comparable, Self.Index == Int {
    
    /// Return a new sorted collection of the elements in `source`
    /// using [Shell Sort](https://en.wikipedia.org/wiki/Shellsort).
    ///
    /// Complexity O(n^(3/2)).
    @warn_unused_result(mutable_variant="shellSortInPlace")
    
    public func shellSort() -> Self {
        
        var output = self
        var increment = 1
        
        while increment < output.endIndex / 3 {
            increment = 3 * increment + 1
        }
        
        while increment >= 1 {
            
            for (var index, element) in output.enumerate() {
                while index >= increment && output[index - increment] > element {
                    output[index] = output[index - increment]
                    index -= increment
                }
                output[index] = element
            }
            
            increment /= 3
        }
        
        return output
        
    }
    
    /// Sort `self` in-place using [Shell Sort](https://en.wikipedia.org/wiki/Shellsort).
    ///
    /// Complexity O(n^(3/2)).
    public mutating func shellSortInPlace() {
        
        var increment = 1
        
        while increment < self.endIndex / 3 {
            increment = 3 * increment + 1
        }
        
        while increment >= 1 {
            
            for (var index, element) in self.enumerate() {
                while index >= increment && self[index - increment] > element {
                    self[index] = self[index - increment]
                    index -= increment
                }
                self[index] = element
            }
            
            increment /= 3
        }
    }
}
