//
//  HeaderView.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 13.12.2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
                    .frame(width: proxy.size.width * 3, height: 350)
                    .position(x: proxy.size.width / 2, y: 175)
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .bold()
                    
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                .padding(.top, 80)
            }
            .offset(y: -150)
        }
        .frame(height: 350)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}

