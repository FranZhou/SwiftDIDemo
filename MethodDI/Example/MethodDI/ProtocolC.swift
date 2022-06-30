//
//  ProtocolC.swift
//  ProtocolDI_Example
//
//  Created by Fan Zhou on 2022/6/27.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

struct C {
  let a: A
  let b: B
}

protocol ProtocolC {
  mutating func inject(c: C)
}
