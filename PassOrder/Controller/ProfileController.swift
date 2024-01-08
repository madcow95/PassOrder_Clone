//
//  ProfileController.swift
//  PassOrder
//
//  Created by MadCow on 2024/1/8.
//

import UIKit

private let profileCell = "ProfileCell"

class ProfileController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        view.backgroundColor = .blue
        
        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: profileCell)
    }
}

extension ProfileController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: profileCell, for: indexPath) as! ProfileCell
        
        return cell
    }
}

extension ProfileController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        // 40은 FeedCell의 widthAndHeight에서 가져온 값이고, 첫번째 8은 위에 둘 공간, 두번째 8은 아래에 둘 공간..?
        var height = width + 8 + 40 + 8
        height += 50 // 이건 왜 이유를 안알려줄까?
        height += 60 // 이것도
        // 어쨌든 height에 값을 더한게 게시물 하나에 요소들이 들어갈 공간을 확보해주는 목적이
        return CGSize(width: width, height: height)
    }
}
