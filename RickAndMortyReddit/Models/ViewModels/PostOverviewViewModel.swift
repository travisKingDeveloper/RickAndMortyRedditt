//
//  OverviewViewModel.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import Foundation

class PostOverviewViewModel {
    var thumbnailURL: String = ""
    var title: String
    
    init(title: String, thumbnailURL: String) {
        self.title = title
        self.thumbnailURL = thumbnailURL
    }
}
