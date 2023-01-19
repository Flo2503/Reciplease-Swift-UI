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
            Button("Add", action: {
                if !inputText.isEmpty {
                    ingredientsList.append(inputText)
                    self.inputText = ""
                }
            })
            .buttonStyle(.bordered)
            .cornerRadius(20)
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
