

import SwiftUI

struct RecipeDetailView: View {
    var recipe : [RecipeViewModel]
  
    var body: some View {
  
        List(recipe) { rec in
                Text(rec.step)
            }
    }
}
    
 
