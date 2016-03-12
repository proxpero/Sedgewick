//
//  SortingTests.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/29/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

import XCTest

class SortingTests: XCTestCase {

    let integers = [2, 10, 5, 3, 8, 4, 7, 9, 6, 1]
    let sortedIntegers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    func testSelectionSort() {
        
        // Test that `selectionSort()` returns a sorted array.
        XCTAssert(integers.selectionSort() == sortedIntegers)
        
        // mutate `integers` to become sorted.
        var mutableIntegers = integers
        mutableIntegers.selectionSortInPlace()
        
        // Test that `integers` is now sorted.
        XCTAssert(mutableIntegers == sortedIntegers)
        
    }

    func testInsertionSort() {
        
        // Test that `insertionSort()` returns a sorted array.
        XCTAssert(integers.insertionSort() == sortedIntegers)
        
        // mutate `integers` to become sorted.
        var mutableIntegers = integers
        mutableIntegers.insertionSortInPlace()
        
        // Test that `integers` is now sorted.
        XCTAssert(mutableIntegers == sortedIntegers)
        
    }
    
    func testShellSort() {
        
        // test that `shellSort` returns a sorted array.
        XCTAssert(integers.shellSort() == sortedIntegers)
        
        // mutate `integers` to become sorted.
        var mutableIntegers = integers
        mutableIntegers.shellSortInPlace()
        
        // Test that `integers` is now sorted.
        XCTAssert(mutableIntegers == sortedIntegers)
    
    }
    
    func testMergeSort() {
        
        // test that merge sort returns a sorted array.
        XCTAssert(integers.mergeSort() == sortedIntegers)
            
    }
    
    func testPerformanceExample() {

        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
        
    }

}
