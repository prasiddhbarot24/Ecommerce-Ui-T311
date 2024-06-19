//
//  ViewController.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    var itemNameArr = ["sports","electronics","tools","sports","electronics","tools"]
    @IBOutlet weak var tblMain: UITableView!
    @IBOutlet weak var cvFirstItems: UICollectionView!
    @IBOutlet weak var imgNotification: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblMain.delegate = self
        tblMain.dataSource = self
        
        cvFirstItems.delegate = self
        cvFirstItems.dataSource = self
        tapGesture()
    }
    override func viewWillAppear(_ animated: Bool) {
        tblMain.sectionHeaderHeight = 0.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblMain.dequeueReusableCell(withIdentifier:"firstTblCell" ) as! firstTblCell
        if indexPath.row == 0{
            cell.contentView.clipsToBounds = true
            cell.contentView.layer.cornerRadius = 20
            cell.contentView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemNameArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cvCell = cvFirstItems.dequeueReusableCell(withReuseIdentifier: "firstitemCVCell", for: indexPath) as! firstitemCVCell
        
        cvCell.lblFirstItem.text = itemNameArr[indexPath.row]
        cvCell.imgFirstItem.image = UIImage(named: itemNameArr[indexPath.row])
        
        return cvCell

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let w = collectionView.frame.width
        print(w)
        return CGSize(width: w - 10, height: 250)
    }
    func tapGesture(){
        let gestureRecognizerOne = UITapGestureRecognizer(target: self, action: #selector(notificationTap))
        imgNotification.isUserInteractionEnabled = true
        imgNotification.addGestureRecognizer(gestureRecognizerOne)
    }
    
    @objc func notificationTap(){
        print("notifications tapp....")
    }
    
}

