//
//  ToDoListViewViewModel.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 13.12.2025.
//

import FirebaseFirestore
import Foundation
import Combine

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false

    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

