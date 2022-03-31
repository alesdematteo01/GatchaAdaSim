//
//  PulledCharacter.swift
//  GatchaAdaSim
//
//  Created by Alessandra De Matteo on 31/03/22.
//

import SwiftUI

struct PulledCharacter: View {
    
//    var passedInCharacter: Character?
//    var updateColor: (UIColor) -> Void
    
    @State var character : Character
    
    @State private var currentColor: Color = .gray
    
    private let animation = Animation.easeInOut(duration: 2.5).repeatForever()
    private let angles = Array(stride(from: 1.0, through: 360.0, by: 36.0*2))
    private let opacity = 0.15
    
    @State private var progress = 0.0
    
    var body: some View {
        Button(action: {
            currentColor = Color(character.rarityColor!)
//            updateColor(UIColor(currentColor))
        }, label: {
            ZStack {
                Circle()
                    .foregroundColor(
                        currentColor
                    )
                    .opacity(opacity)
                ForEach(angles, id: \.self) { i in
                    Circle()
                        .trim(from: 0.0, to: progress)
                        .foregroundColor(
                            currentColor
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
//            currentColor = Color(uiColor: passedInCharacter?.rarityColor ?? .gray)
            withAnimation(animation) {
                progress = 1.0
            }
        }
    }
    
}
