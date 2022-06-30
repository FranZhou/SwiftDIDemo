//
//  InjectObject.swift
//  ProtocolDI_Example
//
//  Created by Fan Zhou on 2022/6/27.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class InjectObject {
  var a: A?
  var b: B?
}

extension InjectObject: ProtocolA {
  func setA(_ a: A) {
    self.a = a
  }
}

extension InjectObject: ProtocolB {
  func register(_ b: B) {
    self.b = b
  }
}
