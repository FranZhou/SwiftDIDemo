//
//  ViewController.swift
//  ProtocolDI
//
//  Created by FranZhou on 06/27/2022.
//  Copyright (c) 2022 FranZhou. All rights reserved.
//

import UIKit
import MethodDI

class ViewController: UIViewController, GetterSetterProtocol {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let diContainer = MethodDIContainer.shared

    injectObject(diContainer: diContainer)
    print("======")
    injectStruct(diContainer: diContainer)
    print("======")
    getterSetterDemo?.doService()
  }

  private func injectObject(diContainer: MethodDIContainerProtocol) {
    let injectObject = InjectObject()

    let injectedObject = diContainer.resolve(for: injectObject)

    print("injectObject === injectedObject: \(injectObject === injectedObject)")

    print(String(describing: injectObject.a?.value))
    print(String(describing: injectObject.b?.value))
  }

  private func injectStruct(diContainer: MethodDIContainerProtocol) {
    let injectStruct = InjectStruct(c: nil)

    let injectedStruct = diContainer.resolve(for: injectStruct)

//    print("injectStruct == injectedStruct: \(injectStruct == injectedStruct)")

    print("injectStruct:")
    print(String(describing: injectStruct.c?.a.value))
    print(String(describing: injectStruct.c?.b.value))

    print("injectedStruct:")
    print(String(describing: injectedStruct.c?.a.value))
    print(String(describing: injectedStruct.c?.b.value))
  }
}

