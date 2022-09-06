//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct SearchView: View {
    
    @State var ingredient = ""
    
    var body: some View {
        NavigationView {
            VStack() {
                Text("What's in your fridge ?").font(.title3).bold().padding(.all)
                HStack {
                    TextField("Ingredients...", text: $ingredient).padding()
                    Button(action: {}) {
                        Text("Add").background(Color.green).foregroundColor(.white).cornerRadius(10).padding()
                    }
                }
            }.navigationTitle(Text("Reciplease")).edgesIgnoringSafeArea(.top).background(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
