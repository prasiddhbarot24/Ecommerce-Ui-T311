//
//  firstTblCell.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class firstTblCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var tblContentView: UIView!
    @IBOutlet weak var viewMain: UIView!
    var itemNameArr = ["Google pixel tablet","Basecamp-4 persong","stailless pot","Google pixel tablet","Basecamp-4 persong","stailless pot"]
    var imageArr = ["tablet","tent-2","pot","tablet","tent-2","pot"]
    
    @IBOutlet weak var cvItemSecond: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cvItemSecond.delegate = self
        cvItemSecond.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemNameArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cvCell = cvItemSecond.dequeueReusableCell(withReuseIdentifier: "SecondItemsCvCell", for: indexPath) as! SecondItemsCvCell
        cvCell.lblItemName.text = itemNameArr[indexPath.row]
        cvCell.imgItems.image = UIImage(named: imageArr[indexPath.row])
        return cvCell
    }
    
}
