//
//  MainView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 29/11/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SearchRecipes()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            Favorites()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorites")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
