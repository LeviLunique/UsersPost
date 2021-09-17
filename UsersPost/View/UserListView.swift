//
//  UserListView.swift
//  UsersPost
//
//  Created by user204006 on 9/16/21.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject
    var viewModel: UserViewModel
    
    var body: some View {
        NavigationView{
            Group {
                if viewModel.loading {
                    loading()
                } else {
                    List{
                        ForEach(viewModel.users){ user in
                            VStack (alignment: .leading) {
                                Text(user.name).font(.title2)
                                Text(user.email).font(.subheadline)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Usuários")
        }
        .onAppear{
            viewModel.fetchUsers()
        }
    }
    
    @ViewBuilder
    private func loading() -> some View{
        VStack{
            ProgressView()
            Text("Carregando...")
        }
    }
}

