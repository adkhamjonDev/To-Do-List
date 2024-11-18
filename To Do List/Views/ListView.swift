//
//  ListView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ListView: View {
    
    @Environment(TodoListViewModel.self) var viewModel:TodoListViewModel
    
    var body: some View {
        List{
            ForEach(viewModel.items){ item in
                ListRowView(item:item)
            }
            .onDelete(perform: viewModel.deleteItem)
            .onMove(perform: viewModel.moveItem)
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


