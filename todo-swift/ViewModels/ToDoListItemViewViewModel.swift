//
//  ToDoListItemViewViewModel.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 13.12.2025.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation
import Combine

class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDicrionary())
    }
}
