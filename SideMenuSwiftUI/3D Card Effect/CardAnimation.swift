//
//  CardAnimation.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 17/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct CardAnimation: View {
    
    @State var show = false
    
    var body: some View {
        VStack() {
            Text("Card in SwiftUI")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding(.top, show ? 30 : 20)
                .padding(.bottom, show ? 20 : 0)
            Image("swiftUI")
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10.0, x: 20, y: 10)
            .padding(.bottom, 50)
            
            Text("SwiftUI's declarative nature makes building UIs incredibly easy. Tap to below button to see card animation.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .animation(.spring())
                .cornerRadius(0)
                .lineLimit(.none)
            
            Spacer()
            
            Button(action: {
                self.show.toggle()
            }) {
                HStack {
                    Image(systemName: show ? "slash.circle.fill" : "slash.circle")
                        .foregroundColor(Color(hue: 0.498, saturation: 0.609, brightness: 1.0))
                        .font(Font.title.weight(.semibold))
                        .imageScale(.small)
                    Text("To Animate")
                        .foregroundColor(Color(hue: 0.498, saturation: 0.609, brightness: 1.0))
                        .fontWeight(.bold)
                        .font(.title)
                        .cornerRadius(0)
                }
            }
            .padding(.bottom, show ? 20 : 15)
            
        }
        .padding()
        .padding(.top, 15)
        .frame(width: show ? 350 : 290, height: show ? 470 : 310)
        .background(Color.blue)
        .cornerRadius(30)
        .animation(.spring())
    }
}

#if DEBUG
struct CardAnimation_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

