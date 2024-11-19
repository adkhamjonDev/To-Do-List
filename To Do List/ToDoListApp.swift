//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages models for View
 
 */

@main
struct ToDoListApp: App {
    
    @State private var todoListViewModel = TodoListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
                    
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environment(todoListViewModel)
        }
    }
}
