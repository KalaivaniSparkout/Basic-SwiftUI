//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 17/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var selectedIndex: Int
    let menuSelected: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image("swiftUI")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10.0, x: 20, y: 10)
                .padding(.top, 100)
                .padding(50)
//            Divider().background(Color.white)
            HStack {
                Image(systemName: "rhombus")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                Text("Home")
                    .foregroundColor(.blue)
                    .font(.headline)
            }.onTapGesture {
                self.selectedIndex = 0
                self.menuSelected()
            }
            HStack {
                Image(systemName: "rectangle.expand.vertical")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                Text("Card Animation")
                    .foregroundColor(.blue)
                    .font(.headline)
            }.onTapGesture {
                self.selectedIndex = 1
                self.menuSelected()
            }
            .padding(.top, 20)
            HStack {
                Image(systemName: "square.fill")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                Text("Blur Effect")
                    .foregroundColor(.blue)
                    .font(.headline)
            }.onTapGesture {
                self.selectedIndex = 2
                self.menuSelected()
            }
            .padding(.top, 20)
            HStack {
                Image(systemName: "list.dash")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                Text("Movie List")
                    .foregroundColor(.blue)
                    .font(.headline)
            }.onTapGesture {
                self.selectedIndex = 3
                self.menuSelected()
            }
            .padding(.top, 20)
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                Text("Image Picker")
                    .foregroundColor(.blue)
                    .font(.headline)
            }.onTapGesture {
                self.selectedIndex = 4
                self.menuSelected()
            }
            .padding(.top, 20)
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
    
}
