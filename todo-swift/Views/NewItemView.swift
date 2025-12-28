//
//  NewItemView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("todo_new_item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 20)
            
            Form {
                TextField("todo_title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("todo_due_date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(
                    title: "action_save",
                    background: .pink
                ) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .alert(isPresented: $viewModel.showAlert) {
                    Alert(
                        title: Text("validation_error_title"),
                        message: Text("validation_error_message")
                    )
                }
                
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: {_ in
        
    }))
}
