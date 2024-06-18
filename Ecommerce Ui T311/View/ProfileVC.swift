//
//  ProfileVC.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var imgUser: UIImageView!
        var userReviews = [
            ["userName":"Jogn Smith","ratingText":"Excellent","rating":5.0,"description":"very good price! i love it"],
            ["userName":"Jogn Smith","ratingText":"Good","rating":4.0,"description":"very good price! i love it"],
            ["userName":"Jogn Smith","ratingText":"Bad","rating":3.0,"description":"very good price! i love it"],
            ["userName":"Jogn Smith","ratingText":"Excellent","rating":5.0,"description":"very good price! i love it"]
        ]
    @IBOutlet weak var imgCustomer1: UIImageView!
    
    @IBOutlet weak var imgCustomer2: UIImageView!
    @IBOutlet weak var imgCustomer3: UIImageView!
    @IBOutlet weak var tblProfile: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblProfile.delegate = self
        tblProfile.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        imgUser.image = UIImage(named: "Men")
        imgUser.layer.cornerRadius = imgUser.frame.height/2
        imgUser.clipsToBounds = true
        imgCustomer1.layer.cornerRadius = imgCustomer1.frame.height/2
        imgCustomer2.layer.cornerRadius = imgCustomer3.frame.height/2
        imgCustomer3.layer.cornerRadius = imgCustomer3.frame.height/2
        
        imgCustomer1.layer.borderWidth = 2.0
        imgCustomer2.layer.borderWidth = 2.0
        imgCustomer3.layer.borderWidth = 2.0
        imgCustomer1.layer.borderColor = UIColor.gray.cgColor
        imgCustomer2.layer.borderColor = UIColor.gray.cgColor
        imgCustomer3.layer.borderColor = UIColor.gray.cgColor
        imgCustomer1.clipsToBounds = true

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userReviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reviewCell = tblProfile.dequeueReusableCell(withIdentifier: "ReviewsTblCell", for: indexPath) as! ReviewsTblCell
        reviewCell.contentView.layer.cornerRadius = 0
        reviewCell.contentView.layer.maskedCorners = []

            if indexPath.row == 0{
                reviewCell.contentView.clipsToBounds = true
                reviewCell.contentView.layer.cornerRadius = 20
                reviewCell.contentView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
            }
        
        if(userReviews[indexPath.row]["rating"] as! Double == 5.0){
            reviewCell.viewCell.backgroundColor = UIColor(named: "Excellent")
        }else{
            reviewCell.viewCell.backgroundColor = UIColor(named: "Great")
        }

        reviewCell.imgUser.image = UIImage(named: "Men")
        reviewCell.lblUserName.text = (userReviews[indexPath.row]["userName"] as! String)
        reviewCell.lblRatingWord.text = (userReviews[indexPath.row]["ratingText"] as! String)
        reviewCell.lblDescription.text = (userReviews[indexPath.row]["description"] as! String)
        reviewCell.lblRatings.text = "\(userReviews[indexPath.row]["rating"]!)"
        return reviewCell
    }
}
