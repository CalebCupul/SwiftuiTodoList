//
//  ListView.swift
//  TodoList
//
//  Created by Caleb Cupul on 23/12/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Finish UI", "Build Astro Shit", "Watch a movie"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
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
