//
//  CollViewCell.swift
//  CollectionView
//
//  Created by user214346 on 2/7/22.
//

import UIKit

class CollViewCell: UICollectionViewCell {
    
    @IBOutlet var label: UILabel!
    
    static let identifier = "CollViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func config(with data: String){
        label.text = data
    }
    static func nib() -> UINib{
        return UINib(nibName: "CollViewCell", bundle: nil)
    }
}
