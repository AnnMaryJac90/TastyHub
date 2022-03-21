//
//  RecipeModel.swift
//  TestStoryBoardRecipe
//
//  Created by Anil Thomas on 3/17/22.
//

import Foundation
struct RecipeModel : Decodable{
    var name : String
    var steps : [Steps]
}

struct Steps: Decodable{
    var number : Int
    var step : String
}
