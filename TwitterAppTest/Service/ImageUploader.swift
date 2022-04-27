//
//  ImageUploader.swift
//  Lexi
//
//  Created by Macbook on 3/5/22.
//

//import Firebase
import UIKit
import SwiftUI

//struct ImageUploader {
//
//    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
//        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
//
//        let filename = NSUUID().uuidString
//        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
//
//        ref.putData(imageData, metadata: nil) {_, error in
//            if let error = error {
//                print("DEBUG Faild to upload image with error: \(error.localizedDescription)")
//                return
//            }
//            ref.downloadURL {imageUrl, _ in
//                guard let imageUrl = imageURL?.absoluteString else { return }
//                completion(imageUrl)
//            }
//        }
//    }
//}
