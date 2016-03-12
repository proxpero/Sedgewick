//
//  TestUnionFind.swift
//  Sedgewick
//
//  Created by Todd Olsen on 3/11/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

import XCTest
import Sedgewick

class TestUnionFind: XCTestCase {
    
    func testUnionFind() {
        var uf = UnionFind(n: 2)
        XCTAssert(uf.count == 2)
        uf.union(0, 1)
        XCTAssert(uf.connected(0, 1))
    }
    
    func testTinyUF() {
        var tinyUF   = UnionFind(filename: "tinyUF")
        var test = false
        measureBlock {
            test = tinyUF.connected(9, 4)
        }
        XCTAssert(test)
    }

    func testMediumConnected() {
        var mediumUF = UnionFind(filename: "mediumUF")
        var test = false
        measureBlock {
            test = mediumUF.connected(196, 171)
        }
        XCTAssert(test)
    }
    
    func testLargeConnected() {
        var largeUF  = UnionFind(filename: "largeUF")
        var test = false
        measureBlock {
            test = largeUF.connected(376625, 760095)
        }
        XCTAssert(test)
    }
    
    func testLargeUnion() {
        var largeUF  = UnionFind(filename: "largeUF")
        measureBlock {
            largeUF.union(376626, 760095)
        }
    }

}
