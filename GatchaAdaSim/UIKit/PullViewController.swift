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
        
        //            let rarityArray = ["3","3","3","3","3","3","4","4","5"]
        let rarityArray = ["5", "5", "5"]
        
        let selectedRarity = rarityArray.randomElement()
        
        let myArray : [Character] = characters.filter{
            $0.rarity == selectedRarity
        }
        
        let pulledCharacter : Character? = myArray.randomElement()
        
        func saveInPulled(_ character: Character) {
            let index = characters.firstIndex { $0.name == character.name }
            if characters[index!].isPulled == true {
                characters[index!].pulledCounter += 1
            } else {
                characters[index!].isPulled = true
                characters[index!].pulledCounter += 1
            }
        }
        saveInPulled(pulledCharacter!)
        
        return UIHostingController(coder: coder, rootView: PulledCharacter(character: pulledCharacter!))
    }
    
    @IBSegueAction func embedDescription(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: PulledCharacterDescription())
    }
}
