//
//  InventoryView.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import SwiftUI

struct InventoryView: View {
    
    
    
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
                LazyVGrid(columns: columns, alignment: .leading, spacing: 100){
                    ForEach(characters.indices, id: \.self){ index in
                        InventoryCharacter(character: characters[index])
                    }

                }
            }
        }
        .padding(.leading, 15)
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
