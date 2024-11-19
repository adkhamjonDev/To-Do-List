//
//  ListView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ListView: View {
    
    @Environment(TodoListViewModel.self) var viewModel
    
    var body: some View {
        ZStack {
            
            if viewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List{
                    ForEach(viewModel.items){ item in
                        ListRowView(item:item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    viewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: viewModel.deleteItem)
                    .onMove(perform: viewModel.moveItem)
                }
                
                .listStyle(PlainListStyle())
            }
        }
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
    .environment(TodoListViewModel())
}


