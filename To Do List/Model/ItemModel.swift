//
//  ItemModel.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import Foundation

struct ItemModel: Identifiable{
    let id:String = UUID().uuidString
    let title:String
    let isCompleted:Bool
}
