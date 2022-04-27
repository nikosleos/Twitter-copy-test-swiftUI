//
//  LikeFilterViewModel.swift
//  Lexi
//
//  Created by Macbook on 3/4/22.
//

import SwiftUI

enum PostFilterViewModel: Int, CaseIterable {
    case repost
    case replies
    case likes

    var title: String {
        switch self {
            case .repost: return "Repost"
            case .replies: return "Replies"
            case .likes: return "Likes"
        }
    }
}
