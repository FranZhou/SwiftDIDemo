//
//  Injected.swift
//  PropertyDI
//
//  Created by Fan Zhou on 2022/6/28.
//

import Foundation
import DIContainer

@propertyWrapper
public struct Injected<T> {
  private let keyPath: WritableKeyPath<InjectionPropertyContainer, T?>?

  public var wrappedValue: T? {
    mutating get {
//      if let keyPath = keyPath {
//        return InjectionPropertyContainer[keyPath]
//      } else {
//        return DIContainer.shared.resolve()
//      }
      DIContainer.shared.resolve()
    }
    set {
//      if let keyPath = keyPath {
//        InjectionPropertyContainer[keyPath] = newValue
//      } else {
//        DIContainer.shared.register(for: T.self, value: newValue)
//      }
      DIContainer.shared.register(for: T.self, value: newValue)
    }
  }

  public init(_ keyPath: WritableKeyPath<InjectionPropertyContainer, T?>? = nil) {
    self.keyPath = keyPath
  }
}
