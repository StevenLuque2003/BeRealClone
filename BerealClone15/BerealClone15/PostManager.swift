//
//  PostManager.swift
//  BerealClone15
//
//  Created by Steven Luque on 2/12/25.
//

import Foundation
import UIKit
import ParseSwift

struct PostManager {
    
    static func uploadPost(image: UIImage, caption: String) {
        guard let imageData = image.jpegData(compressionQuality: 0.8) else { return }
        let imageFile = ParseFile(name: "photo.jpg", data: imageData)

        var newPost = Post()
        newPost.imageFile = imageFile
        newPost.caption = caption
        newPost.user = User.current

        newPost.save { result in
            switch result {
            case .success(let post):
                print("Post uploaded: \(post)")
            case .failure(let error):
                print("Upload failed: \(error.localizedDescription)")
            }
        }
    }
}
extension Post {
    static func fetchPosts(completion: @escaping ([Post]?) -> Void) {
        let query = Post.query()
            .include("user") // Include user data
            .order([.descending("createdAt")]) // Most recent first
            .limit(20) // Limit to 20 posts

        query.find { result in
            switch result {
            case .success(let posts):
                completion(posts)
            case .failure(let error):
                print("Error fetching posts: \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
}
extension Post {
    static func fetchPosts(skip: Int = 0, limit: Int = 10, completion: @escaping ([Post]?) -> Void) {
        let query = Post.query()
            .include("user")
            .order([.descending("createdAt")])
            .limit(limit)
            .skip(skip) // Skip already loaded posts

        query.find { result in
            switch result {
            case .success(let posts):
                completion(posts)
            case .failure(let error):
                print("Error fetching posts: \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
}
