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
                HeaderView(
                    title: "header_todo_list",
                    subtitle: "subheader_get_things_done",
                    angle: 15,
                    background: .pink)
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("auth_email_address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)

                    SecureField("auth_password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "action_log_in", background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)

                // Create Account
                VStack {
                    Text("auth_new_around_here")
                    
                        NavigationLink("auth_create_account", destination: RegisterView())
                    
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
