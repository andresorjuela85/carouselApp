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
    let heightCell = UIScreen.main.bounds.height - 110
    var selectedCartoon: [Cartoon] = []
    var oneCartoon: Cartoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        let service = GetCartoons()
        
        service.getList { cartoonsReceived in
            
            if let cartoonsReceived = cartoonsReceived {
                self.selectedCartoon = cartoonsReceived
                self.cartoonSlider.dataSource = self
                self.cartoonSlider.delegate = self
                
            }
        }
        
        self.cartoonSlider.register(UINib(nibName: "listCell", bundle: nil), forCellWithReuseIdentifier: "reuse")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let secondView = segue.destination as? SecondViewController
        {
            secondView.showCartoon = oneCartoon
        }
    }
}

extension ViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedCartoon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuse", for: indexPath) as? listCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(cartoon: selectedCartoon[indexPath.row])
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}

extension ViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
 
        oneCartoon = selectedCartoon[indexPath.row]
        performSegue(withIdentifier: "secondViewSegue", sender: self)
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: widthCell, height: heightCell)
    }
}
/*
 */
