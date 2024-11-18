//
//  ListView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items:[ItemModel] = [
        ItemModel(title:"This is the 1st title!",isCompleted: false),
        ItemModel(title:"This is the second!",isCompleted: true),
        ItemModel(title:"Third!",isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(items){ item in
                ListRowView(item:item)
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


