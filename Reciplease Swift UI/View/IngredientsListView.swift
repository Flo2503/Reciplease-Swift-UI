//
//  IngredientsListView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 21/11/2022.
//

import SwiftUI

struct IngredientsListView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Text("gnééééé")
        }
    }
}

// MARK: - PREVIEW
struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsListView()
    }
}
