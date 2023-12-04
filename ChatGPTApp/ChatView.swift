//
//  ChatView.swift
//  ChatGPTApp
//
//  Created by Simeon on 12/4/23.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(viewModel.messages.filter({$0.role != .system}), id: \.id) { message in
                    messageView(message: message) 
                }
            }
            HStack {
                TextField("Enter a message... ", text: $viewModel.currentInput)
                Button {
                    viewModel.sendMessage()
                } label: {
                    Text("Send")
                }
            }
        }
        .padding()
    }
    
    func messageView(message: Message) -> some View {
        HStack {
            if message.role == .user { Spacer() }
            Text(message.content)
                .padding()
                .background(message.role == .user ? Color.blue: Color.gray.opacity(0.2))
                .foregroundStyle(message.role == .user ? Color.white: Color.black)
            if message.role == .assistant { Spacer() }
        }
    }
}

#Preview {
    ChatView()
}
