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
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("ContentsViewController")
        self.setViewControllers([vc], direction: .Forward, animated: true, completion: nil)
        self.dataSource = self
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("ContentsViewController")
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("ContentsViewController")
        return vc
    }
}
