

import SwiftUI

struct RecipeCard: View {
    @StateObject var model : AllRecipeDataViewModel = AllRecipeDataViewModel()
    var body: some View {
        NavigationView{
            RecipeCardListView(recipes: model.allRecipes)
                .task {
                    await model.getAllRecipes()
                }
                .navigationTitle("All Recipes")
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard()
    }
}
