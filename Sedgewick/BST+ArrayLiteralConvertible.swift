//
//  BST+ArrayLiteralConvertible.swift
//  BinarySearchTree
//
//  Created by Todd Olsen on 2/17/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

extension BST: ArrayLiteralConvertible {
    
    public init <S: SequenceType where S.Generator.Element == Element>(_ source: S) {
        self = source.reduce(BST<Element>()) { $0.insert($1) }
    }
    
    public init(arrayLiteral elements: Element...) {
        self = BST(elements)
    }
}