//
//  SecondViewController.swift
//  carouselApp
//
//  Created by Camilo Orjuela on 15/01/22.
//  Copyright © 2022 Camilo Orjuela. All rights reserved.
//

import UIKit
import AlamofireImage

class SecondViewController: UIViewController {

    @IBOutlet weak var showTitle: UILabel!
    @IBOutlet weak var showYear: UILabel!
    @IBOutlet weak var showCreatorOne: UILabel!
    @IBOutlet weak var showCreatorTwo: UILabel!
    @IBOutlet weak var showCreatorThree: UILabel!
    @IBOutlet weak var showRating: UILabel!
    @IBOutlet weak var showGenreOne: UILabel!
    @IBOutlet weak var showGenreTwo: UILabel!
    @IBOutlet weak var showRuntime: UILabel!
    @IBOutlet weak var showEpisodes: UILabel!
    @IBOutlet weak var showId: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    
    var showCartoon: Cartoon?

    override func viewDidLoad() {
        super.viewDidLoad()


        if showCartoon?.title != nil
        {
            showTitle.text = showCartoon!.title
        } else {
            showTitle.text = nil
        }
        
        let year: Int? = showCartoon?.year
        showYear.text = String(year!)
        
        let sizeCreator = showCartoon?.creator?.count
        
        if sizeCreator == 1 {
            showCreatorOne.text = showCartoon?.creator![0]
            showCreatorTwo.text = nil
            showCreatorThree.text = nil
        }
        
        if sizeCreator == 2 {
            showCreatorOne.text = showCartoon?.creator![0]
            showCreatorTwo.text = showCartoon?.creator![1]
            showCreatorThree.text = nil
        }
        
        if sizeCreator == 3 {
            showCreatorOne.text = showCartoon?.creator![0]
            showCreatorTwo.text = showCartoon?.creator![1]
            showCreatorThree.text = showCartoon?.creator![2]
        }
        
        if showCartoon?.rating != nil
        {
            showRating.text = showCartoon!.rating
        } else {
            showRating.text = nil
        }
        
        let sizeGenre = showCartoon?.genre?.count
        
        if sizeGenre == 1 {
            showGenreOne.text = showCartoon?.genre![0]
            showGenreTwo.text = nil
        }
        
        if sizeGenre == 2 {
            showGenreOne.text = showCartoon?.genre![0]
            showGenreTwo.text = showCartoon?.genre![1]
        }
        
        let runtime: Int? = showCartoon?.runtime_in_minutes
        showRuntime.text = String(runtime!)
        
        let episodes: Int? = showCartoon?.episodes
        showEpisodes.text = String(episodes!)

        let id: Int? = showCartoon?.id
        showId.text = String(id!)
        
        let url = URL(string: (showCartoon?.image!)!)!
        showImage.af.setImage(withURL: url)
    }
    
    /*

    */
}
