//
//  SearchPanelView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 20/11/2022.
//

import SwiftUI

struct SearchPanelView: View {
    // MARK: - PROPERTIES
    @State private var ingredient: String = ""
    @State var ingredientsList: [String] = []
    
    // MARK: - BODY
    var body: some View {
        HStack() {
            TextField("What's in your fridge ?", text: $ingredient)
                .padding()
                .padding(.vertical, 10)
            Button(action: {
                ingredientsList.append(ingredient)
            }) {
                Image(systemName: "plus.circle")
                    .font(.system(size: 30))
                    .foregroundColor(Color("ColorPink"))
                    .padding(.trailing)
            }
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct SearchPanelView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPanelView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
