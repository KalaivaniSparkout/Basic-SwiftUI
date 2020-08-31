//
//  LoginView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 17/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    // MARK: - Propertiers
    @State private var email = ""
    @State private var password = ""
    @State var showNewView = false
    
    // MARK: - View
    var body: some View {
        NavigationView{
        VStack() {
            Text("Welcome to Swift UI")
                .font(.largeTitle).foregroundColor(Color.black)
                .padding([.top, .bottom], 30)
                .shadow(radius: 10.0, x: 20, y: 10)
            
            Image("swiftUI")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10.0, x: 20, y: 10)
                .padding(.bottom, 50)
            
            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email)
                    .padding()
                    .background(Color.init(.systemGroupedBackground))
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(Color.init(.systemGroupedBackground))
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding([.leading, .trailing], 27.5)
            
            Button(action: {
                self.showNewView = true
            }) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(15.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding(.top, 50)
            Spacer()
            HStack(spacing: 0) {
                Text("Login as a guest user -> ")
                Button(action: {}) {
                    Text("Skip")
                        .foregroundColor(.black)
                }
            }
            NavigationLink(
                destination: ContentView(),
                isActive: $showNewView
            ) {
                EmptyView()
            }.navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        }
        
    }
}
