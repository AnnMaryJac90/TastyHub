//
//  AllRecipeViewModel.swift
//  TastyHub
//
//  Created by Ann Mary Jacob on 3/3/22.
//

import Foundation
@MainActor
class AllRecipeDataViewModel: ObservableObject {
    @Published var allRecipes : [AllRecipeViewModel] = []
    func getAllRecipes() async {
        do {
           let allRecipeResponse = try await WebService().getFromWeb(url: Constants.urlForAllRecipe) { data in
              
               return try? JSONDecoder().decode(AllRecipeModel.self, from: data)
            }
           
            self.allRecipes = allRecipeResponse.results.map(AllRecipeViewModel.init)
        }catch {
            print(error)
        }
    }
    
}
struct AllRecipeViewModel: Identifiable{
    let id = UUID()
    private let allRecipe : Results
    init(_ allRecipe: Results){
        self.allRecipe = allRecipe
    }
    var title : String{
        allRecipe.title
    }
    var imageUrl : URL?{
        URL(string: allRecipe.image)
    }
    var recipeId : Int {
        allRecipe.id
    }
}
