//
//  AnimationView.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 01/04/22.
//

import SwiftUI

struct AnimationView: View {
    
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0

    var body: some View{
        
        ZStack{
            TabView(selection: $selection){
                ForEach(0..<6){ i in
                    Image(characters[i].imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .onReceive(timer) { _ in
                withAnimation {
                    print("selection is \(selection)")
                    selection = selection < 5 ? selection + 1 : 0
                }
            }
        }
    }
}
