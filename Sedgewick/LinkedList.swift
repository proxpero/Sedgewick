//
//  LinkedList.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

public struct List<Element> {
    public typealias Index = ListIndex<Element>
    
    public var startIndex: Index
    public var endIndex: Index { return Index(node: .End, tag: 0) }
    
    public init() {
        startIndex = Index(node: .End, tag: 0)
    }
    
    public func cons(x: Element) -> List {
        var list = self
        list.push(x)
        return list
    }
    
    public mutating func push(x: Element) {
        startIndex = Index(node: startIndex.node.cons(x), tag: startIndex.tag.successor())
    }
    
    public mutating func pop() -> Element? {
        guard case let .Node(x, next: _) = startIndex.node else { return nil }
        startIndex = startIndex.successor()
        return x
    }

//    public var isEmpty: Bool {
//        return startIndex == endIndex
//    }
//    
//    public var car: Element {
//        guard case let .Node(x, next: _) = startIndex.node else { fatalError() }
//        return x
//    }
//
//    public var cdr: List {
//        guard case let .Node(_, next: xs) = startIndex.node else { fatalError() }
//
//        return xs
//    }
}

public indirect enum ListNode<Element> {
    
    case End
    case Node(Element, next: ListNode<Element>)
    
    public func cons(x: Element) -> ListNode {
        return .Node(x, next: self)
    }

}

public struct ListIndex<Element> {
    private let node: ListNode<Element>
    private let tag:  Int
}

extension List: ArrayLiteralConvertible {
    public init(arrayLiteral elements: Element...) {
        self = List()
        for x in elements.reverse() { push(x) }
    }
}

extension ListIndex: ForwardIndexType {
    public func successor() -> ListIndex<Element> {
        guard case let .Node(_, next: next) = node
            else { fatalError("cannot increment endIndex") }
        
        return ListIndex(node: next, tag: tag.predecessor())
    }
}

public func == <T>(lhs: ListIndex<T>, rhs: ListIndex<T>) -> Bool {
    return lhs.tag == rhs.tag
}

extension List: CollectionType {
    
    public subscript(idx: Index) -> Element {
        guard case let .Node(x, _) = idx.node
            else { fatalError("Subscript out of range") }
        
        return x
    }
}
