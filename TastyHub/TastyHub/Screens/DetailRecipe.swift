

import SwiftUI

struct DetailRecipe: View {
    var recipeId : Int
    var recipeTitle : String
        @StateObject var detailModel : RecipeDetailViewModel = RecipeDetailViewModel()
        var body: some View {
            NavigationView{
               
                RecipeDetailView(recipe: detailModel.detailRecipe)
                    .task {
                        await detailModel.getRecipe(withId: recipeId)
                    }
                    .navigationTitle(recipeTitle)
                    
            }
        }
    }

