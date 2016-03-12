//
//  BST.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/25/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

public protocol Tree {
    typealias Element: LookupType
    
    func min() -> Element
    func max() -> Element
    func find(key: Element.Key) -> Self?
    func insert(element: Element) -> Self
    func floor(key: Element.Key) -> Element?
    func ceiling(key: Element.Key) -> Element?
    
}
