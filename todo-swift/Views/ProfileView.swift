//
//  SwiftUIView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()

    var body: some View {
        NavigationStack {
            VStack {
               
            }
            .navigationTitle("profile_title")
        }
    }
}

#Preview {
    ProfileView()
}
