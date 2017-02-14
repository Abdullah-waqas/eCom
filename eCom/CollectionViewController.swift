//
//  CollectionViewController.swift
//  eCom
//
//  Created by Abdullah on 12/02/2017.
//  Copyright © 2017 Abdullah. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
//        self.collectionView?.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "iCell")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//         self.collectionView?.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "iCell")
//        self.automaticallyAdjustsScrollViewInsets = false
//        self.collectionView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell : CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "iCell", for: indexPath) as! CollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell1", for: indexPath)
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2 , height: collectionView.frame.width/2)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        let view  =  storyboard?.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetailViewController
        navigationController?.pushViewController(view, animated: true)
    }

}
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
