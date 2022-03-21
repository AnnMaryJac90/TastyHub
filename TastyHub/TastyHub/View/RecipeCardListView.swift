

import SwiftUI

struct RecipeCardListView: View {
    let recipes : [AllRecipeViewModel]
    var body: some View {
        List(recipes){recipe in
            NavigationLink(destination: RecipeCardDetail(recipeId: recipe.recipeId)){
            Text(recipe.title)
            }
        }
    }
}

