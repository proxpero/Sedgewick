//
//  UGraph.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//




public struct Graph {
    
    public var vertices: Set<Vertex> = Set<Vertex>()
    
    public var vertexCount: Int {
        return vertices.count
    }
    
    public var edgeCount = 0
//    {
//        return (vertices.reduce(0) { $0 + $1.degree }) / 2
//    }
    
    public mutating func addEdge(var v1: Vertex, var v2: Vertex) {
        v1.adjacent.insert(v2)
        v2.adjacent.insert(v1)
        edgeCount += 1
    }

    public func adjacent(vertex: Vertex) -> Set<Vertex> {
        return vertex.adjacent
    }
    
    public var maxDegree: Int {
        return vertices.map { $0.degree }.reduce(0, combine: max)
    }

    public init() {}
    
    public func search(source: Vertex) -> Array<Vertex> {
        
        
        
        
        
    }
}