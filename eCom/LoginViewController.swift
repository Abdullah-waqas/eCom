//
//  LoginViewController.swift
//  eCom
//
//  Created by Abdullah on 14/02/2017.
//  Copyright © 2017 Abdullah. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let view  =  storyboard?.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetailViewController
        navigationController?.pushViewController(view, animated: true)
    }

}
