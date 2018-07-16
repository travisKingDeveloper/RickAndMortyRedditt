//
//  NetworkManagement.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation
import Moya

struct NetworkManager {
    fileprivate let provider = MoyaProvider<MovieProvider>(plugins: [NetworkLoggerPlugin(verbose: true)])
}
