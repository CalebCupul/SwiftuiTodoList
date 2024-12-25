//
//  ListView.swift
//  TodoList
//
//  Created by Caleb Cupul on 23/12/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(title: item.title, isCompleted: item.isCompleted)
                    .onTapGesture {
                        listViewModel.updateItem(item: item)
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
    .environmentObject(ListViewModel())
}
