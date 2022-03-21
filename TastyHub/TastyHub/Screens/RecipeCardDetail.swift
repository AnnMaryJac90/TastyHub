
import SwiftUI

struct RecipeCardDetail: View {
    var recipeId : Int
    @StateObject var model : RecipeCardViewModelManager = RecipeCardViewModelManager()
    var body: some View {
        NavigationView{
            RecipeCardView(recipeCard: model.recipeCard)
                .task {
                    await model.getRecipeCard(withId: recipeId)
                }
                .navigationTitle("All Recipes")
        }
    }
}
