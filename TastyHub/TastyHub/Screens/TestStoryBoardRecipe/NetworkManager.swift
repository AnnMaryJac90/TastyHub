//
//  NetworkManager.swift
//  TestStoryBoardRecipe
//
//  Created by Anil Thomas on 3/17/22.
//

import Foundation
class NetworkManager{
    
     func getUrl(){
         print("Here")
         let urlString = "https://api.spoonacular.com/recipes/716426/analyzedInstructions?apiKey=0821d232e3b14f258cf8403e2b5846cf"
         if let url = URL(string: urlString) {
             let session = URLSession(configuration: .default)
             let task = session.dataTask(with: url) { data, response, error in
                 if error != nil{
                     print("Error in session")
                     return
                 }
                 if let safeData = data {
                     do {
                         let recipeDecoded
                         : [RecipeModel] = try JSONDecoder().decode([RecipeModel].self,from: safeData)
                         print(recipeDecoded.count)
                         
                     }
                     catch {
                         print("Error while parsing JSON data")
                     }
                 }
             }
             task.resume()
         }
     }
}
