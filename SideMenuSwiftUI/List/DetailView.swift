//
//  DetailView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 29/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//


import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var index: String
    var body: some View {
        NavigationView(){
            Image("A\(index)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        }
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: { Image("back").foregroundColor(Color.white)}))
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(index: "1")
    }
}

