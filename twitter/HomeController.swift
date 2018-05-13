//
//  HomeController.swift
//  twitter
//
//  Created by sriram on 13/05/18.
//  Copyright © 2018 sriram. All rights reserved.
//

import UIKit

class HomeController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cell"
    let headerID = "header"
    let footerID = "footer"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerID)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerID)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath)
            header.backgroundColor = .green
            return header
        }else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerID, for: indexPath)
            footer.backgroundColor = .green
            return footer
        }
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
       return CGSize(width: view.frame.width, height: 100)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
