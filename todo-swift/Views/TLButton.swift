//
//  TLButton.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 20.12.2025.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
            .frame(height: 50)  
            .padding()
        }
    }
}

#Preview {
    TLButton(title: "Value", background: .pink){
        // Action
    }
}
