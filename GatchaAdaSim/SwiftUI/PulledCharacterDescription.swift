//
//  PulledCharacterDescription.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import SwiftUI

struct PulledCharacterDescription: View {
    
    @State var character : Character

    var body: some View{
        VStack{
            Text("\(character.name) \(character.surname)")
                .bold()
                .font(.system(size: 36))
                .padding(.bottom)
            HStack{
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                if character.rarity == "4" {
                    Image(systemName: "star.fill")
                }
                if character.rarity == "5" {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
            }
        }
    }
}

