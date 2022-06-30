//
//  InjectedType.swift
//  PropertyDI
//
//  Created by Fan Zhou on 2022/6/29.
//

import Foundation
import DIContainer

@propertyWrapper
public struct InjectedType<T> {
  public var wrappedValue: T? {
    get {
      return DIContainer.shared.resolve()
    }
    set {
      DIContainer.shared.register(for: T.self, value: newValue)
    }
  }

  public init() {}
}
