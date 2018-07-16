//
//  MoyaConfiguration.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation
import Moya

enum RedditAPI {
    case posts(limit: Int)
}

extension RedditAPI : TargetType {
    var sampleData: Data {
        switch self {
        case .posts:
            return "{title: \"Wubba Lubba Dub Dub\", thumbnail: \"\"".utf8Encoded
        }
    }
    
    var baseURL: URL { return URL(string: "https://www.reddit.com/r/rickandmorty")! }
    var path: String {
        switch self {
        case .posts:
                return "/search"
        }
    }
    
    var method: Moya.Method {
        switch self {
            case .posts:
                return .get
        }
    }
    
    var task: Task {
        switch self {
            case let .posts(limit):
                return .requestParameters(parameters: ["q": "picklerick", "limit": limit, "sort": "relevance", "type": "link"], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}

