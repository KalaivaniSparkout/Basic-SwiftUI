//
//  BlurEffect.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 18/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct BlurEffect: View {
    @State var show = false
    
    var body: some View {
        
        VStack {
            Text("SwiftUI")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(4)
//                .animation(.basic(duration: 0.3, curve: .easeOut))
            
            Image("swiftUI")
                .frame(width: show ? UIScreen.main.bounds.size.width - 60 : UIScreen.main.bounds.size.width - 100, height: show ? UIScreen.main.bounds.size.width - 60 : UIScreen.main.bounds.size.width - 100)
                .clipped()
                .cornerRadius(show ? 0 : 30)
                .shadow(radius: 30)
                .blur(radius: show ? 0 : 30)
                .animation(.spring())
                .aspectRatio(contentMode: .fill)
            
            Text("UI Blur effects")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .padding(4)
//                .animation(.basic(duration: 0.4, curve: .easeIn))
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("Animate")
            }
        }
    }
}

struct BlurEffect_Previews: PreviewProvider {
    static var previews: some View {
        BlurEffect().colorScheme(.dark)
    }
}
