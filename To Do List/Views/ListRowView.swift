//
//  ListRowView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item:ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
#Preview(traits: .sizeThatFitsLayout) {
    let item1 = ItemModel(title:"This is the 1st title!",isCompleted: false)
    let item2 = ItemModel(title:"This is the second", isCompleted: true)
    
    Group{
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    
}
