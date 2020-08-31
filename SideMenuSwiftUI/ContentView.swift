//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 17/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var menuOpen: Bool = false
    @State var selectedIndex: Int = 0
//    let arr = [1, 3, 3, 5, 5, 5]
    
    var body: some View {
       
        NavigationView {
            ZStack {
                self.selected(selectedIndex: selectedIndex)
                SideMenu(width: 270,
                         isOpen: self.menuOpen,
                         menuClose: self.openMenu,
                         selectedIndex: self.$selectedIndex)
            }
            .navigationBarTitle("Side Menu", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.openMenu()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
    
    func selected(selectedIndex: Int) -> some View {
        switch selectedIndex {
        case 0:
            return AnyView(HomeView())
        case 1:
            return AnyView(CardAnimation())
        case 2:
            return AnyView(BlurEffect())
        case 3:
            return AnyView(MovieListView())
        case 4:
            return AnyView(ImagePickerView())
        default:
            return AnyView(HomeView())
        }
    }
}

struct SideMenu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.menuSelected()
            }
            
            HStack {
                SideMenuView(selectedIndex: $selectedIndex,
                             menuSelected: self.menuSelected)
                    .frame(width: self.width)
                    .background(Color.white)
                    .offset(x: self.isOpen ? 0 : -self.width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
    
    func menuSelected() {
        print("Menu close")
        print(self.selectedIndex)
        self.menuClose()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*class MenuContent: Identifiable, ObservableObject {
    var id = UUID()
    var name: String = ""
    var image: String = ""
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

struct ContentView: View {
    var menu: [MenuContent] = menuContents
    @State var menuItemSelected: MenuContent = menuContents[0]
    var body: some View {
        ZStack {
            List(menu) { menuItem in
                MenuCell(menuItem: menuItem).onTapGesture {
                    self.menuItemSelected = menuItem
                }
            }
            self.selected(Menu: menuItemSelected)
        }
    }
    
    
    func selected(Menu: MenuContent) -> some View {
        switch Menu.name {
        case "Home":
            return AnyView(HomeView())
            
        case "Profile":
            return AnyView(ProfileView())
            
        case "Chat":
            return AnyView(HomeView())
            
        case "Logout":
            return AnyView(LoginView())
        default:
            return AnyView(HomeView())
        }
    }
}





#if DEBUG
let menuHome = MenuContent(name: "Home", image: "house.fill")
let menuProfile = MenuContent(name: "Profile", image: "person.fill")
let menuChat = MenuContent(name: "Chat", image: "message.fill")
let menuLogout = MenuContent(name: "Logout", image: "power")
let menuContents = [menuHome, menuProfile, menuChat, menuLogout]

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(menu: menuContents)
    }
}
#endif

struct MenuCell: View {
    var menuItem: MenuContent = menuContents[0]
    var body: some View {
        HStack {
            Image(systemName: menuItem.image)
                .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
            Text(menuItem.name).foregroundColor(.orange)
        }
    }
}*/

