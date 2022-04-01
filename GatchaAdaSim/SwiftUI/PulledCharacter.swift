//
//  PulledCharacter.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import SwiftUI

struct PulledCharacter: View {
    
    @State var character : Character
    
    private let animation = Animation.easeInOut(duration: 2.5).repeatForever()
    private let angles = Array(stride(from: 1.0, through: 360.0, by: 36.0*2))
    private let opacity = 0.15
    
    @State private var progress = 0.0
    
    var body: some View {
        Button(action: {
        }, label: {
            ZStack {
                Circle()
                    .foregroundColor(
                        Color(character.rarityColor!)
                    )
                    .opacity(opacity)
                ForEach(angles, id: \.self) { i in
                    Circle()
                        .trim(from: 0.0, to: progress)
                        .foregroundColor(
                            Color(character.rarityColor!)
                        )
                        .rotationEffect(Angle(degrees: Double(i)))
                        .opacity(opacity)
                }
                Image("\(character.imageName)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(progress)
            }
        })
        .onAppear {
            withAnimation(animation) {
                progress = 1.0
            }
        }
    }
    
}
