
//
//  ProductImgCvCell.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ProductImgCvCell: UICollectionViewCell {
    
    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var viewLocation: UIView!
    @IBOutlet weak var viewAvailable: UIView!
    
    @IBAction func pageController(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        
        imgProduct.layer.cornerRadius = 20
        imgProduct.layer.masksToBounds = true
        self.viewLocation.layer.cornerRadius = 10
        self.viewAvailable.layer.cornerRadius = 10
    }
}
