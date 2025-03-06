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
            
            // CONTENT
            VStack {
                // WIDGETS
                WidgetView()
                    .edgesIgnoringSafeArea(.horizontal)
                    .edgesIgnoringSafeArea(.top)
                    .padding()
                
                Spacer()
                
                // BOTTOM
                HStack {
                    // VERSION
                    HStack {
                        Text("◻️") // image
                        VStack(alignment: .leading) {
                            Text("ReBoard")
                                .bold()
                            Text("v0.0")
                        }
                    }
                    .frame(maxHeight: 15)
                    .padding()
                    
                    Spacer()
                    
                    // MENU BUTTONS
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("File")
                        }
                        
                        Button("Widgets") {
                            
                        }
                        
                        Button("Import") {
                            
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear {
            if let window = NSApplication.shared.windows.first {
                window.isOpaque = false
                window.backgroundColor = .clear
            }
        }
    }
}

#Preview {
    ContentView()
}
