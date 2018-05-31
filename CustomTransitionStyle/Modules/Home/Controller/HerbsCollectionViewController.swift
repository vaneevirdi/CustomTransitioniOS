//
//  HerbsCollectionViewController.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

class HerbsCollectionViewController: UICollectionViewController {
    
    private let herbs = Herb.collection
    private struct Constant {
        static let cellIdentifier = "herbCell"
    }
}

extension HerbsCollectionViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return herbs.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constant.cellIdentifier, for: indexPath) as? HerbCollectionViewCell
            else { return UICollectionViewCell() }
        cell.herb = herbs[indexPath.row]
        return cell
    }
}
