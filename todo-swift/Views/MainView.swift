//
//  ContentView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            TodoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("tab_home_title", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("tab_profile_title", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}

