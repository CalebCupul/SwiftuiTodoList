//
//  ListRowView.swift
//  TodoList
//
//  Created by Caleb Cupul on 23/12/24.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    let isCompleted: Bool
    
    var body: some View {
        HStack {
            Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "Write Code", isCompleted: false)
}
