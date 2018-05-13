//
//  WordCell.swift
//  twitter
//
//  Created by sriram on 13/05/18.
//  Copyright © 2018 sriram. All rights reserved.
//

import UIKit

class WordCell : UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    let wordLabel : UILabel = {
       let label = UILabel()
        label.text = "test"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        backgroundColor = .yellow
        addSubview(wordLabel)
        
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
