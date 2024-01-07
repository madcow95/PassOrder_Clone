//
//  MainTabBarController.swift
//  PassOrder
//
//  Created by MadCow on 2024/1/7.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tab Bar의 배경색
        tabBar.backgroundColor = .white
        
        configureTabBar()
    }
    
    func configureTabBar() {
        
        // load된 화면의 배경색
        view.backgroundColor = .brown
        
        let layout = UICollectionViewFlowLayout()
        
        let home = configureTabBarController(unSelected: UIImage(systemName: "house")!, seleted: UIImage(systemName: "house.fill")!, view: HomeController(collectionViewLayout: layout), title: "홈")
        
        viewControllers = [home]
    }
    
    func configureTabBarController(unSelected: UIImage, seleted: UIImage, view: UIViewController, title: String) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: view)
        
        navigation.tabBarItem.image = unSelected
        navigation.tabBarItem.selectedImage = seleted
        navigation.navigationBar.tintColor = .black
        navigation.tabBarItem.title = title
        
        return navigation
    }
}
