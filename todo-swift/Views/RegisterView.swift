//
//  RegisterView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(
                title: "header_register",
                subtitle: "subheader_start_organizing",
                angle: -15,
                background: .orange
            )
            
            Form {
                TextField("auth_full_name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("auth_email_address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("auth_password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "action_create_account", background: .green) {
                    viewModel.register()
                }
            }
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
