//
//  ToDoListViewModel.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import Foundation
import Observation


@Observable class TodoListViewModel{
    var items: [ItemModel] = []
    
    init(){
        
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title:"This is the 1st title!",isCompleted: false),
            ItemModel(title:"This is the second!",isCompleted: true),
            ItemModel(title:"Third!",isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(index:IndexSet){
        items.remove(atOffsets: index)
    }
    func moveItem(from:IndexSet,to:Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}
