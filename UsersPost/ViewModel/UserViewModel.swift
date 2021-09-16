//
//  UserViewModel.swift
//  UsersPost
//
//  Created by user204006 on 9/16/21.
//

import Foundation

class UserViewModel: ObservableObject{
    
    @Published
    var users = [User]()
    
    func fetchUsers(){
        
        let session = URLSession.shared
        
        if let url = URL (string: "https://jsonplaceholder.typicode.com/users"){
            session.dataTask(with: url) { (data, response, error) in
                if let resp = response as? HTTPURLResponse,
                   resp.statusCode >= 200, resp.statusCode < 300,
                   let json = data {
                    DispatchQueue.main.async {
                        self.users = try! JSONDecoder().decode([User].self, from: json)
                    }
                }
            }.resume()
        }
    }
    
}
