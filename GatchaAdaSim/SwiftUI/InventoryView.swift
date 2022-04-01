//
//  InventoryView.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import SwiftUI

struct InventoryView: View {
    
    var characters : [Character]
    
    var columns: [GridItem] = [
        GridItem(.fixed(100), spacing: 100),
        GridItem(.fixed(100), spacing: 100)
    ]
    
    var body: some View {
        VStack{
        Text("Inventory")
            .font(.title)
            .multilineTextAlignment(.center)
        Spacer()
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: columns, alignment: .leading, spacing: 20){
                    ForEach(characters.filter{$0.isPulled}, id: \.self){ pulledCharacter in
                        InventoryCharacter(character: pulledCharacter)
                    }

                }
            }
        }
        .padding(.leading, 25)
        .padding(.trailing, 25)
    }
}

//struct InventoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryView()
//    }
//}
