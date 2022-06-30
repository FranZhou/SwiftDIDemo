//
//  ProtocolA.swift
//  ConstructorDI_Example
//
//  Created by Fan Zhou on 2022/6/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

protocol ProtocolA {
  func serviceA()
}

class A: ProtocolA {
  func serviceA() {
    print("serviceA")
  }
}
