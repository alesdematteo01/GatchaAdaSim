//
//  PullViewController.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import Foundation
import UIKit
import SwiftUI

class PullViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func embedImage(_ coder: NSCoder) -> UIViewController? {
        var character : Character?
        return UIHostingController(coder: coder, rootView: PulledCharacter(character: character!))
    }
    
    
    @IBSegueAction func embedDescription(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: PulledCharacterDescription())
    }
}
