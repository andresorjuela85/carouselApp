//
//  ViewController.swift
//  carouselApp
//
//  Created by Camilo Orjuela on 12/01/22.
//  Copyright © 2022 Camilo Orjuela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cartoonSlider: UICollectionView!
    
    let widthCell = UIScreen.main.bounds.width
    var selectedCartoon: [Cartoon] = []
    var tabla = ["a", "b","c","d","e","f","g","h"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let service = GetCartoons()
        
        service.getList { cartoonsReceived in
            
            if let cartoonsReceived = cartoonsReceived {
                self.selectedCartoon = cartoonsReceived
                self.cartoonSlider.dataSource = self
                self.cartoonSlider.delegate = self
                
            } else {
                print("No entra")
            }
        }
        
     
        self.cartoonSlider.register(UINib(nibName: "listCell", bundle: nil), forCellWithReuseIdentifier: "reuse")
    }

}

extension ViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuse", for: indexPath) as? listCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(cartoon: selectedCartoon[2])
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}

extension ViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print (indexPath.row)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: widthCell, height: widthCell)
    }
}
/*

 */
