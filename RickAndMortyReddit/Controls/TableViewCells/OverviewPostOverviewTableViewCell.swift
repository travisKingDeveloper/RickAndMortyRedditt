//
//  RickAndMortyOverviewTableViewCell.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import UIKit

class OverviewPostOverviewTableViewCell: UITableViewCell {

    //MARK: Connections
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
