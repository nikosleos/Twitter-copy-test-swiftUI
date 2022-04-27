//
//  SideMenuViewModel.swift
//  Lexi
//
//  Created by Macbook on 3/5/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
case profile
case list
case bookmark
case logout

    var title: String {
        switch self {
            case .profile: return "Profile"
            case .list: return "Lists"
            case .bookmark: return "Bookmarks"
            case .logout: return "Logout"
        }
    }

    var imageName: String {
        switch self {
            case .profile: return "person"
            case .list: return "list.bullet"
            case .bookmark: return "bookmark"
            case .logout: return "arrow.left.square"
        }
    }
}
