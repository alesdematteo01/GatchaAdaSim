//
//  Character.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import Foundation
import UIKit

struct Character : Hashable {
    var name: String
    var surname: String
    var imageName: String {
        "\(name.lowercased())_\(surname.lowercased())_clear"
    }
    var rarity: String?
    var rarityColor: UIColor?
    
    var isPulled : Bool = true
    var pulledCounter : Int = 0
}
