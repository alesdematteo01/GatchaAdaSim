//
//  Data.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import Foundation
import UIKit

class AppData : ObservableObject {
    @Published var characters: [Character] = [
        Character(
            name: "Giovanni",
            surname: "Monaco",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        ),
        Character(
            name: "Domenico",
            surname: "Tancredi",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        ),
        Character(
            name: "Mara",
            surname: "Rossi",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        ),
        Character(
            name: "Roberta",
            surname: "Albanese",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        ),
        Character(
            name: "Moritz",
            surname: "Recke",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        ),
        Character(
            name: "Tiago",
            surname: "Pereira",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        )
    ]
    
    //    MARK: Rarity Filter
    
    func filterMyCharacters(_ arrayToBeFiltered : [Character], rarity : String) -> [Character]{
        
        let myArray = arrayToBeFiltered.filter{
            $0.rarity == rarity
        }
        return myArray
    }
    
    func retrieveRarity() -> String{
        
        let rarityArray = ["3","3","3","3","3","3","4","4","5"]
        
        guard let selectedRarity = rarityArray.randomElement()
        else {
            return "3"
        }
        
        return selectedRarity
        
    }
    
}
