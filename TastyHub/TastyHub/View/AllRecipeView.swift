

import SwiftUI

struct AllRecipeView: View {
    let recipes : [AllRecipeViewModel]
    var body: some View {
         
        List(recipes) { recipe in

            NavigationLink(destination: DetailRecipe(recipeId: recipe.recipeId, recipeTitle: recipe.title)){
            AllRecipeCellView(recipes: recipe)
            }
        }
    }
}

