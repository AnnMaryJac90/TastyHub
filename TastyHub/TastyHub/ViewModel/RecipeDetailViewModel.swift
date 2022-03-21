//
//  RecipeDetailViewModel.swift
//  TastyHub
//
//  Created by Ann Mary Jacob on 3/16/22.
//


import Foundation
@MainActor
class RecipeDetailViewModel: ObservableObject {
    @Published var detailRecipe : [RecipeViewModel] = []
    func getRecipe(withId id : Int) async {
        do {
            let deatilRecipeResponse: [RecipeModel] = try await WebService().getFromWeb(url: Constants.urlForRecipeDetail(withId: id)) { data in
              
               return try? JSONDecoder().decode([RecipeModel].self, from: data)
            }
            if(deatilRecipeResponse.isEmpty){
                print("no recipe available")
                return
            }
            
           self.detailRecipe = deatilRecipeResponse[0].steps.map(RecipeViewModel.init)
        
        }catch {
            print(error)
        }
    }
    
}
struct RecipeViewModel: Identifiable{
    let id = UUID()
    private let detailRecipe : Steps
    init(_ detailRecipe: Steps){
        self.detailRecipe = detailRecipe
    }
    
    var number : Int{
        detailRecipe.number
    }
    var step : String{
        detailRecipe.step
    }
   
}
