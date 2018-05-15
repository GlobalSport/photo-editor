//
//  ColorsCollectionViewDelegate.swift
//  Photo Editor
//
//  Created by Mohamed Hamed on 5/1/17.
//  Copyright © 2017 Mohamed Hamed. All rights reserved.
//

import UIKit

class ColorsCollectionViewDelegate: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var colorDelegate : ColorDelegate?
    
    /**
     Array of Colors that will show while drawing or typing
     */
    var colors = [
                  
                 UIColor(red: 51.0/255.0, green: 255.0/255.0, blue: 210.0/255.0, alpha: 1),
                 UIColor(red: 255.0/255.0, green: 97.0/255.0, blue: 98.0/255.0, alpha: 1),
                 UIColor(red: 122.0/255.0, green: 160.0/255.0, blue: 232.0/255.0, alpha: 1),
                 UIColor(red: 242.0/255.0, green: 249.0/255.0, blue: 135.0/255.0, alpha: 1),
                 UIColor(red: 0.0/255.0, green: 10.0/255.0, blue: 25.0/255.0, alpha: 1),
                 UIColor.darkGray,
                 UIColor(red: 120.0/255.0, green: 130.0/255.0, blue: 145.0/255.0, alpha: 1),
                 UIColor.lightGray,
                 UIColor(red: 230.0/255.0, green: 240.0/255.0, blue: 255.0/255.0, alpha: 1)
                 ]
    
    override init() {
        super.init()
    }
    
    var stickersViewControllerDelegate : StickersViewControllerDelegate?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        colorDelegate?.didSelectColor(color: colors[indexPath.item])
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "ColorCollectionViewCell", for: indexPath) as! ColorCollectionViewCell
        cell.colorView.backgroundColor = colors[indexPath.item]
        return cell
    }
    
}
