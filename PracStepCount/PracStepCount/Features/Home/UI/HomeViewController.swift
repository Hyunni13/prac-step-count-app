//
//  ViewController.swift
//  PracStepCount
//
//  Created by James on 12/3/24.
//

import SwiftUI
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        renderUI()
    }
    
    private func renderUI() {
        let homeHostController = UIHostingController(rootView: HomeView())
        
        addChild(homeHostController)
        homeHostController.didMove(toParent: self)
        
        view.addSubview(homeHostController.view)
        
        homeHostController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homeHostController.view.topAnchor.constraint(equalTo: view.topAnchor),
            homeHostController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            homeHostController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeHostController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

}
