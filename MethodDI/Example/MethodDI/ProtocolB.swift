//
//  ProtocolB.swift
//  ProtocolDI_Example
//
//  Created by Fan Zhou on 2022/6/27.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class B {
  let value: String

  init(value: String) {
    self.value = value
  }

}

protocol ProtocolB {
  func register(_ b: B)
}
