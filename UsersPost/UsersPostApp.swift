//
//  UsersPostApp.swift
//  UsersPost
//
//  Created by user204006 on 9/16/21.
//

import SwiftUI

@main
struct UsersPostApp: App {
    var body: some Scene {
        WindowGroup {
            UserListView(viewModel: UserViewModel())
        }
    }
}
