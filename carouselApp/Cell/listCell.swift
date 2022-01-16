//
//  listCell.swift
//  carouselApp
//
//  Created by Camilo Orjuela on 12/01/22.
//  Copyright © 2022 Camilo Orjuela. All rights reserved.
//

import UIKit
import WebKit
import AlamofireImage

class listCell: UICollectionViewCell {

    
    @IBOutlet weak var imageCartoon: UIImageView!
    @IBOutlet weak var titleCartoon: UILabel!
    @IBOutlet weak var yearCartoon: UILabel!
    @IBOutlet weak var ratingCartoon: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var rating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func configure(cartoon: Cartoon)
    {
        titleCartoon.text = cartoon.title
        imageCartoon.backgroundColor = .white
        yearCartoon.text = String(cartoon.year!)
        ratingCartoon.text = cartoon.rating
        let url = URL(string: cartoon.image!)!
        imageCartoon.af.setImage(withURL: url)
            
    }
}


/*

 */
