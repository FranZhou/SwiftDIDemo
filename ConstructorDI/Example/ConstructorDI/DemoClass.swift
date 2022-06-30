//
//  DemoClass.swift
//  ConstructorDI_Example
//
//  Created by Fan Zhou on 2022/6/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import DIContainer

class DemoClass {
  private var a: ProtocolA?
  private var b: ProtocolB?

  init(
    a: ProtocolA? = DIContainer.shared.resolve(),
    b: ProtocolB? = DIContainer.shared.resolve()
  ) {
    self.a = a
    self.b = b
  }

  func printTest() {
    print("printTest start")
    a?.serviceA()
    b?.serviceB()
    print("printTest end")
  }

}
