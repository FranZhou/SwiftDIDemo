//
//  InjectionDemoA.swift
//  PropertyDI_Example
//
//  Created by Fan Zhou on 2022/6/29.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import PropertyDI

class InjectionDemoA: InjectionDemoProtocolA {
  func demoA() {
    print("Example for PropertyDI -> InjectionDemoProtocolA")
  }
}

class InjectionDemoA1: InjectionDemoProtocolA {
  func demoA() {
    print("Example for PropertyDI -> InjectionDemoA1")
  }
}
