//
//  ContentView.swift
//  ReBoard
//
//  Created by SunnyFlops on 05/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VisualEffectBlur(material: .hudWindow, blendingMode: .behindWindow)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .onAppear {
                if let window = NSApplication.shared.windows.first {
                    window.isOpaque = false
                    window.backgroundColor = .clear // Clear to allow blur effect
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
