//
//  BST.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/12/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

public indirect enum BST<Element where Element: LookupType>: Tree {
    
    case Empty
    case Node(left: BST<Element>, element: Element, right: BST<Element>)
    
    public init() {
        self = .Empty
    }
    
    public init(
        _ e: Element,
        _ left:  BST<Element> = .Empty,
        _ right: BST<Element> = .Empty)
    {
        self = .Node(left: left, element: e, right: right)
    }
    
    public var isEmpty: Bool {
        switch self {
            case .Empty: return true
            default:     return false
        }
    }
    
    public var count: Int {
        
        var count = 0
        if case .Node(_, _, _)         = self { count += 1           }
        if case let .Node(left, _, _)  = self { count += left.count  }
        if case let .Node(_, _, right) = self { count += right.count }
        
        return count
    }
}

extension BST: CustomStringConvertible {
    
    public var description: String {
        
        var d = ""
        switch self {
        case .Empty:
            d = "|"
        case .Node(left: let left, element: let e, right: let right):
            d = "(\(left), \(e), \(right))"
        }
        
        return d
    }
}