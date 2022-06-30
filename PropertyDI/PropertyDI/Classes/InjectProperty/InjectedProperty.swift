//
//  InjectedProperty.swift
//  PropertyDI
//
//  Created by Fan Zhou on 2022/6/29.
//

import Foundation

@propertyWrapper
public struct InjectedProperty<T> {  
  private let keyPath: WritableKeyPath<InjectionPropertyContainer, T?>

  public var wrappedValue: T? {
    get {
      return InjectionPropertyContainer[keyPath]
    }
    set {
      InjectionPropertyContainer[keyPath] = newValue
    }
  }

  public init(_ keyPath: WritableKeyPath<InjectionPropertyContainer, T?>) {
    self.keyPath = keyPath
  }
}
