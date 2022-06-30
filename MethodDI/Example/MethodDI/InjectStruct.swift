//
//  InjectStruct.swift
//  ProtocolDI_Example
//
//  Created by Fan Zhou on 2022/6/27.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

struct InjectStruct {
  var c: C?
}

extension InjectStruct: ProtocolC {
  mutating func inject(c: C) {
    self.c = c
  }
}
