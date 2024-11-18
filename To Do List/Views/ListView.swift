//
//  ListView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items:[String] = [
        "This the 1st title!",
        "This the 2st title!",
        "This the 3st title!",
    ]
    
    var body: some View {
        List{
            ForEach(items, id:\.self){ item in
                ListRowView(title:"This is the 1st title!")
            }
        }
        .listStyle(PlainListStyle())
        
        .navigationTitle("Todo List 📝")
        .toolbar{
            ToolbarItem(
                placement: .navigationBarLeading
            ){
                EditButton()
            }
            ToolbarItem(
                placement: .navigationBarTrailing
            ){
                NavigationLink("Add",destination: {
                    AddView()
                })
            }
        }
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}


