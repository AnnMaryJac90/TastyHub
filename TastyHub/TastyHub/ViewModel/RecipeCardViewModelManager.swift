//
//  RecipeCardViewModelManager.swift
//  TastyHub
//
//  Created by Ann Mary Jacob on 3/18/22.
//

import Foundation
@MainActor
class RecipeCardViewModelManager: ObservableObject {
    @Published var recipeCard : String = ""
    func getRecipeCard(withId id : Int) async {
        do {
            let deatilRecipeResponse: RecipeCardModel = try await WebService().getFromWeb(url: Constants.urlForRecipeCard(withId: id)) { data in
                return try? JSONDecoder().decode(RecipeCardModel.self, from: data)
            }
          
            self.recipeCard = deatilRecipeResponse.url
           
            
            
        }catch {
            print(error)
        }
      
    }
    
}
struct RecipeCardViewModel: Identifiable{
    let id = UUID()
    private let detailRecipeCard : RecipeCardModel
    init(_ detailRecipeCard: RecipeCardModel){
        self.detailRecipeCard = detailRecipeCard
    }
 
    var url : String{
        detailRecipeCard.url
    }
   
}
