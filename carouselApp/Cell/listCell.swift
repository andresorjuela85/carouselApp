//
//  listCell.swift
//  carouselApp
//
//  Created by Camilo Orjuela on 12/01/22.
//  Copyright © 2022 Camilo Orjuela. All rights reserved.
//

import UIKit

class listCell: UICollectionViewCell {

    @IBOutlet weak var imageCartoon: UIImageView!
    @IBOutlet weak var titleCartoon: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backgroundColor = .lightGray
    }

    func configure(cartoon: Cartoon)
    {
        titleCartoon.text = cartoon.title
    }
}


/*

 */
