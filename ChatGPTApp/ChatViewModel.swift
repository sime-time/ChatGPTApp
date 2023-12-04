//
//  ChatViewModel.swift
//  ChatGPTApp
//
//  Created by Simeon on 12/4/23.
//

import Foundation

extension ChatView {
    class ViewModel: ObservableObject {
        @Published var messages: [Message]
        
        func sendMessage() {
            
        }
    }
}

struct Message: Decodable {
    let id: UUID
    let content: String
    let createAt: Date
}
