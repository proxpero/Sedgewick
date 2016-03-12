//
//  BST+CollectionType.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

//extension BST: CollectionType
//{
//    typealias Index = Int
//
//    var startIndex: Int { return 0 }
//    var endIndex: Int {
//        guard case let .Node(left, _, right) = self else { fatalError() }
//        return left.count + right.count
//    }
//    
//    subscript(position: BST<Element>.Index) -> AnyGenerator<Element>.Element {
//        guard case let .Node(left, me, right) = self else { fatalError() }
//        
//        if left.count == position {
//            return me
//        }
//        
////        if position >
//        
//        return left[position]
//    }
//
//}
