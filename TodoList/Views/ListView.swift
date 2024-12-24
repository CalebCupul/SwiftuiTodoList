//
//  ListView.swift
//  TodoList
//
//  Created by Caleb Cupul on 23/12/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Take a Walk", isCompleted: false),
        ItemModel(title: "LeetCode", isCompleted: false),
        ItemModel(title: "Wash the Dishes", isCompleted: true),
        ItemModel(title: "Take the Laundry", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(title: item.title, isCompleted: item.isCompleted)
            }
//            .onDelete(perform: { indexSet in
//                items.remove(atOffsets: indexSet)
//            })
        }
        .navigationTitle("Todo's")
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: {
                EditButton()
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                NavigationLink("Add", destination: AddView())
            })
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
