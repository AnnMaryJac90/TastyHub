

import SwiftUI

struct AllRecipeCellView: View {
    var recipes : AllRecipeViewModel
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)], spacing: 15){
            AsyncImage(url: recipes.imageUrl) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 220, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .overlay(alignment: .bottom){
                        Text(recipes.title)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .font(.title)
                            .frame(width: 130, alignment: .top)
                            .padding()
                        
                    }
                
            }placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5.0)
                    .overlay(alignment: .bottom){
                        Text(recipes.title)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .font(.title)
                            .frame(width: 130, alignment: .top)
                            .padding()
                    }
                
            }
        }
    }
}


