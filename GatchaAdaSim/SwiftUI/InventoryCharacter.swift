//
//  InventoryCharacter.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import Foundation
import SwiftUI

struct InventoryCharacter: View {
    var character : Character
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(Color(character.rarityColor!))
                .frame(width: 165, height: 250, alignment: .center)
            VStack{
                
//                Circle()
//                    .frame(width: 100, height: 100, alignment: .center)
//                    .foregroundColor(Color.white)
//                    .padding()
                
                PulledCharacterInventory(character: character)
                    .frame(width: 150, height: 150, alignment: .center)
                
//                Text("Roba")
//                Text("Stelle")
//                    .padding(.bottom)
//                Text("x1")
                
                Text(character.name)
                Text(character.surname)
                    .padding(.bottom)
                Text("x"+String(character.pulledCounter))
                    .padding(.bottom)
            }
        }
    }
    
}

//struct InventoryCharacter_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryCharacter()
//    }
//}
