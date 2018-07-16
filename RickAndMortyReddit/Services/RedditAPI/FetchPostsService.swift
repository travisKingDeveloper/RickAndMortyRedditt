//
//  FetchPostsService.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/16/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation

class FetchPostsService {
    var _fetchPostsRepository : FetchPostsRepository
    
    init() {
        _fetchPostsRepository = FetchPostsRepository()
    }
    
    func getPosts(limit: Int) -> [Post] {
        let fetchedPosts = _fetchPostsRepository.getPosts(limit: limit)
        
        var posts = [Post]()
        
        for fetchedPost in fetchedPosts {
            posts.append(Post(title: fetchedPost.title, thumbnailURL: fetchedPost.thumbnailUrl))
        }
        
        return posts
    }
}
