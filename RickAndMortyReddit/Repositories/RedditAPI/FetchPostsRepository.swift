//
//  FetchPostsRepository.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation
import Moya

class FetchPostsRepository {
    var provider: MoyaProvider<RedditAPI>
    
    func getPosts(limit: Int) -> [PostEntity] {
        var retval = [PostEntity]()
        
        provider.request(.posts(limit: limit)) { result in
            switch result {
            case let .success(response):
                
                let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
                print(json)
                
                retval = try! JSONDecoder().decode([PostEntity].self, from: response.data)
            case let .failure(err):
                print("Error \(String(describing: err.errorDescription))")
            }
        }
        
        return retval
    }
    
    init() {
        provider = MoyaProvider<RedditAPI>()
    }
}
