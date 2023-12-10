//
//  ChatGPTAppApp.swift
//  ChatGPTApp
//
//  Created by Simeon on 12/4/23.
//

import SwiftUI

@main
struct ChatGPTAppApp: App {
    @StateObject var appViewModel = ChatView.ViewModel()
    var body: some Scene {
        WindowGroup {
            ChatView(viewModel: appViewModel)
        }
    }
}
