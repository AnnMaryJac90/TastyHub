
import Foundation
struct Constants {
    static let urlForAllRecipe = URL(string: "https://api.spoonacular.com/recipes/complexSearch?apiKey=0821d232e3b14f258cf8403e2b5846cf")!
    
    static func urlForRecipeDetail(withId id:Int)->URL{
        return URL(string: "https://api.spoonacular.com/recipes/\(id)/analyzedInstructions?apiKey=0821d232e3b14f258cf8403e2b5846cf")!
    }
    
    
    static func urlForRecipeCard(withId id:Int)->URL{
        return URL(string: "https://api.spoonacular.com/recipes/\(id)/card?apiKey=0821d232e3b14f258cf8403e2b5846cf")!
    }
}

