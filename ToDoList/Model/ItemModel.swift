//
//  ItemModel.swift
//  ToDoList
//
//  Created by suraj kumar on 17/07/23.
//

import Foundation
struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
