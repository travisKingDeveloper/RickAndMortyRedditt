//
//  Post.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/16/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation

class Post {
    var thumbnailURL: String
    var title: String
    
    init(title: String, thumbnailURL: String) {
        self.title = title
        self.thumbnailURL = thumbnailURL
    }
}
