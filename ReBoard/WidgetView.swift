//
//  WidgetView.swift
//  ReBoard
//
//  Created by Arav Prasad on 05/03/2025.
//

import SwiftUI

struct WidgetView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("⬆️")
                Spacer()
                HStack {
                    Text("⬅️")
                    Spacer()
                    Text("➡️")
                }
                Spacer()
                Text("⬇️")
            }
        }
    }
}

#Preview {
    WidgetView()
}
