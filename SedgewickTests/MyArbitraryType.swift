//
//  MyArbitraryType.swift
//  Sedgewick
//
//  Created by Todd Olsen on 2/25/16.
//  Copyright © 2016 Todd Olsen. All rights reserved.
//

import Sedgewick

struct MyArbitraryType<T where T: CustomStringConvertible> {
    
    let name: String
    let value: T
    
    init(name: String, value: T) {
        self.name  = name
        self.value = value
    }
}

extension MyArbitraryType: LookupType {
    
    typealias Key = String
    var key: Key {
        return name
    }
}

extension MyArbitraryType: CustomStringConvertible {
    var description: String {
        return value.description
    }
}

extension String: CustomStringConvertible {
    public var description: String {
        return self
    }
}