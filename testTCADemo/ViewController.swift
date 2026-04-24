//
//  ViewController.swift
//  testTCADemo
//
//  Created by chongzhang on 2026/4/24.
//

import UIKit
import CombineSchedulers
import ComposableArchitecture
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let store = Store(initialState: CounterFeature.State()) {
            CounterFeature()
        }
        let contentView: ContentViewTest = ContentViewTest(store: store)
        let hostingController = UIHostingController(rootView: contentView)
       
       addChild(hostingController)
       view.addSubview(hostingController.view)
       hostingController.didMove(toParent: self)
       
       hostingController.view.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate([
           hostingController.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
           hostingController.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
       ])
    }
}
