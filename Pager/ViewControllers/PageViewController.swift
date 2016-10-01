//
//  PageViewController.swift
//  Pager
//
//  Created by 佐藤 康次 on 2016/08/20.
//  Copyright © 2016年 toosaa. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "ContentsViewController")
        self.setViewControllers([vc], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "ContentsViewController")
        return vc
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "ContentsViewController")
        return vc
    }
}
