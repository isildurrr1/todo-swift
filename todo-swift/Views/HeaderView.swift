//
//  HeaderView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 13.12.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text("Get things done")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 30)
            }
            .frame(width: proxy.size.width * 3, height: 300)
            .position(x: proxy.size.width / 2, y: 150) // сохраняем шапку видимой внутри области GeometryReader
        }
        .frame(height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
