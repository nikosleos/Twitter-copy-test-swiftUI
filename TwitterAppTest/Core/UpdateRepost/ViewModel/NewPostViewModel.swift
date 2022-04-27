//
//  NewResponseViewModel.swift
//  Lexi
//
//  Created by Macbook on 3/5/22.
//

import Foundation

class NewPostViewModel: ObservableObject {

    let service = PostService()

    func uploadPost(withCaption caption: String) {
        service.uploadPost(caption: caption)
    }
}
