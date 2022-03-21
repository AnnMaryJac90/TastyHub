//
//  AllRecipeModel.swift
//  TastyHub
//
//  Created by Ann Mary Jacob on 3/3/22.
//

import Foundation
import SwiftUI
struct AllRecipeModel: Codable,Identifiable{
    let id = UUID()
    var results : [Results]
}

struct Results: Codable,Identifiable{
    var id: Int
    var title: String
    var image: String
}

