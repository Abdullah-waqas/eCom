//
//  TabBarController.swift
//  eCom
//
//  Created by Abdullah on 14/02/2017.
//  Copyright © 2017 Abdullah. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.title!)
    }
    

}
