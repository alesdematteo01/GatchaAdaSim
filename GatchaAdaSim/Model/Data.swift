//
//  Data.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import Foundation
import UIKit


    var characters: [Character] = [
        Character(
            name: "Giovanni",
            surname: "Monaco",
            rarity: "5",
            rarityColor: UIColor(named: "Yellow")
        ),
        Character(
            name: "Domenico",
            surname: "Tangredi",
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
        ), Character(
            name: "Raffaele",
            surname: "Siciliano",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Alessandra",
            surname: "De Matteo",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Antonio",
            surname: "Facciolli",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Davide",
            surname: "Belardi",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Eleonora",
            surname: "Franco",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Francesco",
            surname: "Pirone",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Gianluca",
            surname: "Lucchesi",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Maria",
            surname: "Trotta",
            rarity: "3",
            rarityColor: UIColor(named: "Mint")
        ), Character(
            name: "Umberto",
            surname: "L'Unicorno",
            rarity: "4",
            rarityColor: UIColor(named: "Grape")
        ), Character(
            name: "Pasqualo",
            surname: "Lo Squalo",
            rarity: "4",
            rarityColor: UIColor(named: "Grape")
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
    

