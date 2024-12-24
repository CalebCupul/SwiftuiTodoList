//
//  AddView.swift
//  TodoList
//
//  Created by Caleb Cupul on 23/12/24.
//

import SwiftUI

struct AddView: View {
    @State var title: String = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Add Text", text: $title)

            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Submit")
            })
        }
        
        .navigationTitle("New Item")
        
        
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
