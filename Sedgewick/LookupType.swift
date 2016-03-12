//
//  LookupType.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/26/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

public protocol LookupType {
    typealias Key: Comparable
    var key: Key { get }
}

