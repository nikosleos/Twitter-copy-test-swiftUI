//
//  ExploreViewModel.swift
//  Lexi
//
//  Created by Macbook on 3/5/22.
//

import Foundation

class ExploreViewModel: ObservableObject {
//    @Published var users = [Users]()

//    var searchableUsers: [User] {
//        if searchText.isEmpty {
//            return users
//        } else {
//            let lowercasedQuery = searchText.lowercased()
//
//            return users.filter({
//                $0.username.contains(lowercasedQuery) ||
//                $0.fullname.lowercase().contains(lowercasedQuery)
//            })
//        }
//    }
    
    let  service = UserService()

    init() {

    }

    func fetchUsers() {
//        service.fetchUser { users in
//            self.users = users
//
//            print("DEBUG: Users \(users)")
//        }
    }
}
