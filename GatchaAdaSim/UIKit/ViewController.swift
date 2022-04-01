//
//  ViewController.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 30/03/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func embedAnimation(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: AnimationView())
    }
    
    @IBSegueAction func toInventory(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: InventoryView())
    }
}

