//
//  InventoryView.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import SwiftUI

struct InventoryView: View {
    
    @EnvironmentObject var appData: AppData
    
    var columns: [GridItem] = [
        GridItem(.fixed(100), spacing: 12),
        GridItem(.fixed(100), spacing: 12),
        GridItem(.fixed(100), spacing: 12),
        GridItem(.fixed(100), spacing: 12),
        GridItem(.fixed(100), spacing: 12)
    ]
    
    var body: some View {
        VStack{
        Text("Inventory")
            .font(.title)
            .multilineTextAlignment(.center)
        Spacer()
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: columns, alignment: .leading, spacing: 32){
                    ForEach(appData.characters.indices, id: \.self){ index in
                        InventoryCharacter(character: appData.characters[index])
                    }

                }
            }
        }
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
