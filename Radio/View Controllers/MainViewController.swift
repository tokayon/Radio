//
//  MainViewController.swift
//  Radio
//
//  Created by Serge Sinkevych on 12/13/17.
//  Copyright © 2017 Serge Sinkevych. All rights reserved.
//

import UIKit

// MARK: - MainViewController Class -

class MainViewController: UIPageViewController {
    
    // Properties
    
    private let numberOfPages = 3
    private let playerSegue = "PlayerSegue"
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        
        var lists: [ListViewController] = []
        
        for index in 0..<numberOfPages {
            let listVC = createListViewController()
            listVC.pageIndex = index
            listVC.player = self
            lists.append(listVC)
        }
        return lists
    }()
    
    private func createListViewController() -> ListViewController {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as? ListViewController else {
            fatalError("No viewController instantiated")
        }
        return vc
    }
    
    // Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
}

// MARK: - MainViewController ext: Configuration -

extension MainViewController: Playable {
    func play(radio: Radio) {
        performSegue(withIdentifier: playerSegue, sender: radio)
    }
}

// MARK: - MainViewController ext: Data Source -

extension MainViewController: UIPageViewControllerDataSource {
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return orderedViewControllers.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]    }
}

// MARK: - MainViewController ext: Navigation -

extension MainViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let playerVC = segue.destination as? PlayerViewController else { return }
        guard let radio = sender as? Radio else { return }
        playerVC.radio = radio
        
    }
}
