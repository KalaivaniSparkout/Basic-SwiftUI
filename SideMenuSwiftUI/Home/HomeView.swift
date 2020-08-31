//
//  HomeView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 17/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bookmark")
                Text("Simple Swift Guide")
                    .onTapGesture {
                        print(#function)
                        print(self.flexStrings())
                }
            }
            Text("Basic animations & Navigation drawer")
            
        }
        
    }
    func flexStrings(s1: String = "", s2: String = "") -> String {
        return s1 + s2 == "" ? "none": s1 + s2
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
