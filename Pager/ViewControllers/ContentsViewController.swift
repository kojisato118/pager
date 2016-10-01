//
//  ContentsViewController.swift
//  Pager
//
//  Created by 佐藤 康次 on 2016/08/20.
//  Copyright © 2016年 toosaa. All rights reserved.
//

import UIKit

class ContentsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setNavigationbarTransparent(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setNavigationbarTransparent(_ transparent : Bool){
        // http://qiita.com/mochizukikotaro/items/a4405701dcc706fd643e
        
        if transparent{
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
        }else{
            self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
            self.navigationController?.navigationBar.shadowImage = nil
        }
    }
}
