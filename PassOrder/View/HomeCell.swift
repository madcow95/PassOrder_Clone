//
//  HomeCell.swift
//  PassOrder
//
//  Created by MadCow on 2024/1/8.
//

import UIKit

class HomeCell: UICollectionViewCell {
    // MARK: 아래처럼 한 이유는?
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
