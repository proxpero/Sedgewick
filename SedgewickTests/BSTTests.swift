//
//  TestBST.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/25/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

import XCTest
import Sedgewick

class TestBST: XCTestCase {
    
    typealias TestTree = BST<MyArbitraryType<String>>

    let testingTree: TestTree = {
        
        var tree = TestTree()
        
        let e0 = MyArbitraryType(name: "B", value: "b")
        let e1 = MyArbitraryType(name: "S", value: "s")
        let e2 = MyArbitraryType(name: "T", value: "t")
        let e3 = MyArbitraryType(name: "E", value: "e")
        let e4 = MyArbitraryType(name: "X", value: "x")
        let e5 = MyArbitraryType(name: "A", value: "a")
        let e6 = MyArbitraryType(name: "M", value: "m")
        let e7 = MyArbitraryType(name: "P", value: "p")
        let e8 = MyArbitraryType(name: "L", value: "l")
        let e9 = MyArbitraryType(name: "E", value: "e")
        
        tree = tree.insert(e0)
        tree = tree.insert(e1)
        tree = tree.insert(e2)
        tree = tree.insert(e3)
        tree = tree.insert(e4)
        tree = tree.insert(e5)
        tree = tree.insert(e6)
        tree = tree.insert(e7)
        tree = tree.insert(e8)
        tree = tree.insert(e9)
        
        return tree

    }()
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInitialization() {
        
        let e0 = MyArbitraryType(name: "B", value: "b")
        let t0 = BST<MyArbitraryType<String>>()
        XCTAssert(t0.isEmpty == true)
        let t1 = BST<MyArbitraryType<String>>(e0)
        XCTAssert(t1.isEmpty == false)
        XCTAssert(t1.count == 1)

    }
    
    func testInsert() {
        let e0 = MyArbitraryType(name: "B", value: "b")
        let e1 = MyArbitraryType(name: "S", value: "s")
        
        var t = BST<MyArbitraryType<String>>()
        t = t.insert(e0)
        XCTAssert(t.count == 1)
        
        t = t.insert(e1)
        XCTAssert(t.count == 2)
        
        t = t.insert(e0)
        XCTAssert(t.count == 2)
        
        let e = MyArbitraryType(name: e0.key, value: e0.value)
        t = t.insert(e)
        XCTAssert(t.count == 2)
        
    }

    func testFloor() {
        
        let e1 = MyArbitraryType(name: "G", value: "g")
        let e2 = MyArbitraryType(name: "M", value: "m")
        let e3 = MyArbitraryType(name: " ", value: " ")
        
        XCTAssert(testingTree.floor(e1.key)!.key == "E")
        XCTAssert(testingTree.floor(e2.key)!.key == "M")
        XCTAssert(testingTree.floor(e3.key) == nil)
    }
    
    func testCeiling() {

        let e1 = MyArbitraryType(name: "G", value: "g")
        let e2 = MyArbitraryType(name: "M", value: "m")
        let e3 = MyArbitraryType(name: "Z", value: "z")
        
        XCTAssert(testingTree.ceiling(e1.key)!.key == "L")
        XCTAssert(testingTree.ceiling(e2.key)!.key == "M")
        XCTAssert(testingTree.ceiling(e3.key) == nil)
    
    }
    
    func testFind() {
        
        XCTAssert(testingTree.find("E") != nil)
        XCTAssert(testingTree.find("Q") == nil)
    }
    
    func testMin() {
        XCTAssert(testingTree.min().key == "A")
    }
    
    func testMax() {
        XCTAssert(testingTree.max().key == "X")
    }
    
    func testContains() {
        
        XCTAssert(testingTree.contains("B") == true)
        XCTAssert(testingTree.contains("Q") == false)
        
    }
    
    func testArrayLiteralConvertible() {
        let e0 = MyArbitraryType(name: "B", value: "b")
        let e1 = MyArbitraryType(name: "S", value: "s")
        let e2 = MyArbitraryType(name: "T", value: "t")
        let e3 = MyArbitraryType(name: "E", value: "e")
        let e4 = MyArbitraryType(name: "X", value: "x")
        let e5 = MyArbitraryType(name: "A", value: "a")
        let e6 = MyArbitraryType(name: "M", value: "m")
        let e7 = MyArbitraryType(name: "P", value: "p")
        let e8 = MyArbitraryType(name: "L", value: "l")
        let e9 = MyArbitraryType(name: "E", value: "e")
        
        let array = [e0, e1, e2, e3, e4, e5, e6, e7, e8, e9]
        let tree = BST(array)
        print(tree)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
