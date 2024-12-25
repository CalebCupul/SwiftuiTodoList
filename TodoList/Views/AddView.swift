//
//  AddView.swift
//  TodoList
//
//  Created by Caleb Cupul on 23/12/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        Form {
            Section {
                TextField("Add Text", text: $textFieldText)

            }
            
            Button(action: {addItem(textFieldText)} , label: {
                Text("Submit")
            })
        }
        .navigationTitle("New Item")
        .alert(alertTitle, isPresented: $showAlert){
            Button("Ok", role: .cancel) {}
        }
    }
    
    func addItem(_ title: String) {
        if notEmpty() {
            listViewModel.addItem(title: title)
            dismiss()
        }
    }
    
    func notEmpty() -> Bool {
        if textFieldText.count > 0 {
            return true
        } else {
            alertTitle = "The Task must have a title."
            showAlert = true
            return false
        }
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}
