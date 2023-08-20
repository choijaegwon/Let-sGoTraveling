//
//  ContentView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        TabView {
            Group {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                Text("Hi 3")
                    .tabItem {
                        Image(systemName: "plus")
                    }
                Text("Hi 4")
                    .tabItem {
                        Image(systemName: "bookmark")
                    }
                MyInfoView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(.white, for: .tabBar)
            .toolbarColorScheme(.light, for: .tabBar)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
