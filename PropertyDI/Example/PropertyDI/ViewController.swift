//
//  ViewController.swift
//  PropertyDI
//
//  Created by FranZhou on 06/28/2022.
//  Copyright (c) 2022 FranZhou. All rights reserved.
//

import UIKit
import PropertyDI

class ViewController: UIViewController {

  @InjectedProperty(\.demoA) var propertyA
  @InjectedProperty(\.demoB) var propertyB

  @InjectedType var typeA: InjectionDemoProtocolA?
  @InjectedType var typeB: InjectionDemoProtocolB?

  @Injected(\.demoA) var injectedA
  @Injected var injectedB: InjectionDemoProtocolB?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    testProperty()
    testType()
    testMix()

    print("========================")
    propertyA = InjectionDemoA1()
    typeB = InjectionDemoB1()

    testProperty()
    testType()
    testMix()

    print("========================")
    var a = InjectedType<InjectionDemoProtocolA>()
    a.wrappedValue = InjectionDemoA()
    var b = InjectedProperty(\.demoB)
    InjectedProperty(\.)
    b.wrappedValue = InjectionDemoB()

    testProperty()
    testType()
    testMix()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  private func testProperty() {
    print("--- testProperty start ---")
    propertyA?.demoA()
    propertyB?.demoB()
    print("--- testProperty end ---")
  }

  private func testType() {
    print("--- testType start ---")
    typeA?.demoA()
    typeB?.demoB()
    print("--- testType end ---")
  }

  private func testMix() {
    print("--- testType start ---")
    injectedA?.demoA()
    injectedB?.demoB()
    print("--- testType end ---")
  }

  
}

