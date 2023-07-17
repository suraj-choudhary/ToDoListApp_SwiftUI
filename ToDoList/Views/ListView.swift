//
//  ListView.swift
//  ToDoList
//
//  Created by suraj kumar on 17/07/23.
//

import SwiftUI
struct ListView: View {
    @State var items: [ItemModel] = [ItemModel(title: "This is item", isCompleted: false), ItemModel(title: "This is item", isCompleted: true), ItemModel(title: "This is item", isCompleted: false)]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: {
            AddView()
        }))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

