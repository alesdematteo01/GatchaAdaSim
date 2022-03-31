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
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(Color.gray)
                .frame(width: 150, height: 250, alignment: .center)
            VStack{
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(Color.white)
                    .padding()
                Text("Roba")
                Text("Stelle")
                    .padding(.bottom)
                Text("x1")
            }
        }
    }
    
}

//struct InventoryCharacter_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryCharacter()
//    }
//}
