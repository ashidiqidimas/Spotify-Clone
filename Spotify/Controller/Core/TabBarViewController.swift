//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Dimas on 13/11/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

		setupControllers()
		setupTabBar()
    }
	
	func setupTabBar() {
		let tabBarAppearance = UITabBarAppearance()
		tabBarAppearance.configureWithOpaqueBackground()
		tabBarAppearance.backgroundColor = .systemBackground
		tabBar.standardAppearance = tabBarAppearance
		tabBar.scrollEdgeAppearance = tabBar.standardAppearance
		tabBar.isTranslucent = true
		tabBar.unselectedItemTintColor = .secondaryLabel
	}
	
	func setupControllers() {
		let homeViewController = HomeViewController()
		homeViewController.title = "Browse"
		homeViewController.navigationItem.largeTitleDisplayMode = .always
		let homeViewNav = UINavigationController(rootViewController: homeViewController)
		homeViewNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
		homeViewNav.navigationBar.prefersLargeTitles = true
		
		let searchViewController = SearchViewController()
		searchViewController.title = "Search"
		searchViewController.navigationItem.largeTitleDisplayMode = .always
		let searchViewNav = UINavigationController(rootViewController: searchViewController)
		searchViewNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "magnifyingglass"), tag: 2)
		searchViewNav.navigationBar.prefersLargeTitles = true
		
		let libraryViewController = LibraryViewController()
		libraryViewController.title = "Library"
		libraryViewController.navigationItem.largeTitleDisplayMode = .always
		let libraryViewNav = UINavigationController(rootViewController: libraryViewController)
		libraryViewNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "book"), tag: 3)
		libraryViewNav.navigationBar.prefersLargeTitles = true
		
		setViewControllers([homeViewNav, searchViewNav, libraryViewNav], animated: false)
	}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
