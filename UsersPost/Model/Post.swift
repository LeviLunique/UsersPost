//
//  Post.swift
//  UsersPost
//
//  Created by user204006 on 9/16/21.
//

import Foundation

// MARK: - Post
struct Post: Codable, Identifiable {
    let userId, id: Int
    let title, body: String
}
