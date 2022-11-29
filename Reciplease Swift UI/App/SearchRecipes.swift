//
//  SearchRecipes.swift
//  Reciplease Swift UI
//
//  Created by Florent on 20/11/2022.
//

import SwiftUI

struct SearchRecipes: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack() {
            Text("Reciplease")
                .fontWeight(.heavy)
                .font(.title)
                .foregroundColor(Color("ColorPink"))
            //: TEXTFIELD
            SearchPanelView()
            //: INGREDIENTS LIST
            GroupBox(label: Text("Your ingredients :")) {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                   Text("Gnééééé")
               }
            } //: GROUPBOX
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct SearchRecipes_Previews: PreviewProvider {
    static var previews: some View {
        SearchRecipes()
    }
}
