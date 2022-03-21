

import SwiftUI

struct AllRecipes: View {
    @StateObject var model : AllRecipeDataViewModel = AllRecipeDataViewModel()
    var body: some View {
        NavigationView{
            AllRecipeView(recipes: model.allRecipes)
                .task {
                    await model.getAllRecipes()
                }
                .navigationTitle("All Recipes")
        }
    }
}

struct All_Previews: PreviewProvider {
    static var previews: some View {
        AllRecipes()
    }
}
