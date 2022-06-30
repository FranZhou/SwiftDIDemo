//
//  GetterSetterProtocolDemo.swift
//  MethodDI
//
//  Created by Fan Zhou on 2022/6/30.
//

import Foundation
import DIContainer


public protocol GetterSetterDemoProtocol {
  func doService()
}


public protocol GetterSetterProtocol {
  var getterSetterDemo: GetterSetterDemoProtocol? { get set }
}

public extension GetterSetterProtocol {
  var getterSetterDemo: GetterSetterDemoProtocol? {
    get {
      DIContainer.shared.resolve()
    }
    set {
      DIContainer.shared.register(for: GetterSetterDemoProtocol.self, value: newValue)
    }
  }
}
