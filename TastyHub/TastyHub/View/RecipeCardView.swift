
//

import SwiftUI

struct RecipeCardView: View {
    var recipeCard : String
    var body: some View {
        AsyncImage(url: URL(string: recipeCard)) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 320, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                
            
        }placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5.0)
               
        }
        Text(recipeCard)
       
    }
}

