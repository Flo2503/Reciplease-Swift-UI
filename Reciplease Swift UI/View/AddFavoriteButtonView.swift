//
//  AddFavoriteButtonView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 18/11/2022.
//

import SwiftUI

struct AddFavoriteButtonView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            //
        }) {
            Image(systemName: "heart")
                .padding(6)
                .foregroundColor(Color("ColorPink"))
                .font(.system(size: 30))
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle().stroke(Color("ColorPink"), lineWidth: 2))
                
            }
        
    }
}

// MARK: - PREVIEW
struct AddFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        AddFavoriteButtonView()
            .previewLayout(.sizeThatFits)
    }
}
