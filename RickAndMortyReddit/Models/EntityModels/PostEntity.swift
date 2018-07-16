//
//  PostEntity.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation

struct PostEntity {
    let title: String
    let thumbnailUrl: String
}

extension PostEntity: Decodable {
    enum PostCodingKeys: String, CodingKey {
        case title = "data.title"
        case thumbnailUrl = "data.thumbnail"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: PostCodingKeys.self)
        
        title = try container.decode(String.self, forKey: .title)
        thumbnailUrl = try container.decode(String.self, forKey: .thumbnailUrl)
    }
}

struct PostEntities {
    let posts: [PostEntity]
}
