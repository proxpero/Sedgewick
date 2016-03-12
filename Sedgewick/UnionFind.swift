//
//  UnionFind.swift
//  Sedgewick
//
//  Created by Todd Olsen on 3/11/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

private func getPairs(filename: String) -> (count: Int, pairs: [(Int, Int)]) {
    
    let bundle = NSBundle(identifier: "proxpero.Sedgewick")!
    let url = bundle.URLForResource(filename, withExtension: "txt")!
    let text = try! String(contentsOfURL: url, encoding: NSUTF8StringEncoding)
    
    let entries = text.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet())
    let count   = Int(entries[0])!
    let pairs   = entries[1..<entries.endIndex].map { $0.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet()) }.map { (Int($0[0])!, (Int($0[1]))!) }
    
    return (count, pairs)
    
}

public struct UnionFind {
    
    private var parent: Array<Int>
    private var size:   Array<Int>     = []
    public private(set) var count: Int = 0
    
//    public init(n: Int) {
//        self.parent = Array<Int>(0..<n)
//        self.size   = Array<Int>(count: n, repeatedValue: 1)
//        self.count  = n
//    }
    
    public init(filename: String) {
        let result = getPairs(filename)
        self.parent = Array<Int>(0..<result.count)
        self.size   = Array<Int>(count: result.count, repeatedValue: 1)
        self.count = result.count
        read(result.pairs)
    }
    
    public init(n: Int, _ pairs: [(Int, Int)] = []) {
        self.parent = Array<Int>(0..<n)
        self.size   = Array<Int>(count: n, repeatedValue: 1)
        self.count  = n
        read(pairs)
    }

    mutating public func read(pairs: [(Int, Int)]) {
        for (p, q) in pairs {
            union(p, q)
        }
    }
    
    mutating public func union(p: Int, _ q: Int) {
        let i = root(p)
        let j = root(q)
        if  i == j { return }
        
        if size[i] < size[j] {
            parent[i] = j
            var sizej = size[j]
            sizej += size[i]
            size[j] += size[i]
            
            assert(size[j] == sizej)
            
        } else {
            parent[j] = i
            size[i] += size[j]
            
            var sizei = size[i]
            sizei += size[j]
            size[i] += size[j]
            
            assert(size[i] == sizei)
        }
        
        count -= 1
    }
    
    mutating public func connected(p: Int, _ q: Int) -> Bool {
        return root(p) == root(q)
    }
    
    mutating func root(i: Int) -> Int {
        var root = i
        while root != parent[root] {
            parent[root] = parent[parent[root]]
            root = parent[root]
        }
        return root
    }
    
//    mutating func find(p: Int) -> Int {
//        var root = p
//        while root != parent[root] {
//            root = parent[root]
//        }
//        
//        var pp = p
//        while pp != root {
//            let newp = parent[pp]
//            parent[pp] = root
//            pp = newp
//        }
//        return root
//    }
}
