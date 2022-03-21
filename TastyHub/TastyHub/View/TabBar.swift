//
//  TabBar.swift
//  TastyHub
//
//  Created by Ann Mary Jacob on 3/3/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View{
    TabView{
        AllRecipes()
             .tabItem{
                 Label("Detailed Recipe", systemImage: "book.circle")
             }
         RecipeCard()
                         .tabItem{
                     Label("Recipe Card", systemImage: "menucard")
                 }
        
         }
}
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
