//
//  ChatView.swift
//  ChatGPTApp
//
//  Created by Simeon on 12/4/23.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ChatView()
}
