//
//  MyTabView.swift
//  GenieAladdin
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct MyTabView: View {
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            HomePageView()
                .tabItem {
                    Text("Accueil")
                        Image(systemName: "house.fill")
                    }.tag(0)
            WishesView()
                .tabItem {
                    Text("Réalisations")
                        Image(systemName: "lamp.desk.fill")
                    }.tag(1)
            ContactView()
                .tabItem {
                    Text("Contact")
                        Image(systemName: "globe")
                    }.tag(2)
        }
    }
}
            
struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
