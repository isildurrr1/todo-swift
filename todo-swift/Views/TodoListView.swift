//
//  TodoListItemsView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("TodoListView loaded")
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}



#Preview {
    TodoListView(userId: "")
}
