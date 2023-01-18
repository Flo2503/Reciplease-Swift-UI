//
//  SearchPanelView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 20/11/2022.
//

import SwiftUI

struct SearchPanelView: View {
    // MARK: - PROPERTIES
    @State private var inputText: String = ""
    @Binding var ingredientsList: [String]
    
    // MARK: - BODY
    var body: some View {
        HStack() {
            TextField("What's in your fridge ?", text: $inputText)
                .padding()
                .padding(.vertical, 10)
            Button(action: {
                if !inputText.isEmpty {
                    ingredientsList.append(inputText)
                    self.inputText = ""
                }
            }) {
                Image(systemName: "plus.circle")
                    .font(.system(size: 30))
                    .foregroundColor(.accentColor)
                    .padding(.trailing)
            }
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct SearchPanelView_Previews: PreviewProvider {
    @State static var ingredientsPreview: [String] = ["Oignon", "Cheese"]
    static var previews: some View {
        SearchPanelView(ingredientsList: $ingredientsPreview)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
