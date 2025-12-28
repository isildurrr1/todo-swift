//
//  LoginView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import Combine
import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)

                // Create Account
                VStack {
                    Text("New around here?")
                    
                        NavigationLink("Create An Account", destination: RegisterView())
                    
                    .padding(.bottom, 50)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
