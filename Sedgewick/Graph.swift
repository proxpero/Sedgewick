//
//  Graph.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

struct Graph {
    typealias Vertex = Int

    var vertices = Dictionary<Vertex, Set<Vertex>>()
    var edgeCount: Int = 0
    
    mutating func addEdge(v1: Vertex, v2: Vertex) {
        edgeCount += 1
        vertices[v1]!.insert(v2)
        vertices[v2]!.insert(v1)
    }
    
    var maxDegree: Int {
        return vertices.map { $0.1.count }.reduce(0, combine: Swift.max)
    }

}



