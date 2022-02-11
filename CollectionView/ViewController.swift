//
//  ViewController.swift
//  CollectionView
//
//  Created by user214346 on 2/7/22.
//

import UIKit
struct Book{
    var name : String?
    var price : Int?
}
class ViewController: UIViewController {
    
    var names : [String] = ["Karan", "Shubham", "Ram", "Swapnil", "Amol", "Arun", "Soham" ]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.register(CollViewCell.nib(), forCellWithReuseIdentifier: CollViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    
    
    
    
    
}
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)

    }
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollViewCell.identifier , for: indexPath) as! CollViewCell
        cell.config(with: names[indexPath.item])
        
        return cell
    }
    
}

