//
//  RBT.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/25/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

public enum Color {
    case Black
    case Red
}

public indirect enum RBT<Element where Element: LookupType>: Tree {
    
    case Empty
    case Node(element: Element, color: Color, left: RBT<Element>, right: RBT<Element>)
    
    init() {
        self = .Empty
    }
    
    init(_ e: Element, _ color: Color = .Red, _ left: RBT<Element> = .Empty, _ right: RBT<Element> = .Empty) {
        self = .Node(element: e, color: color, left: left, right: right)
    }
    
    var isEmpty: Bool {
        switch self {
        case .Empty: return true
        default:     return false
        }
    }
    
    var count: Int {
        
        var count = 0
        if case .Node(_,_,_,_)         = self { count += 1           }
        if case let .Node(_,_,left,_)  = self { count += left.count  }
        if case let .Node(_,_,_,right) = self { count += right.count }
        
        return count
    }
}