//
//  ViewController.swift
//  eCom
//
//  Created by Abdullah on 05/02/2017.
//  Copyright © 2017 Abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        tableview.register(nib: UINib(nibName: "TableViewCell1", bundle: Bundle.main), forCellWithReuseIdentifier: "tableCell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.navigationBar.titleTextAttributes
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 12
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let view  =  storyboard?.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetailViewController
        navigationController?.pushViewController(view, animated: true)
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 506
//    }


}

