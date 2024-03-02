//
//  ContentView.swift
//  father_hit_task_1
//
//  Created by Антон Поникаровский on 01.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            ScrollView {
                VStack (alignment: .center) {
                    ForEach((1...100), id: \.self) {
                        Text("\($0)")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .fill(.red)
                    .opacity(0.5)
                    .frame(height: 50)
            }
        }
    }
}

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem { Label("First", systemImage: "star") }
        }
    }
}

#Preview {
    MainView()
}
