//
//  ReviewsTblCell.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ReviewsTblCell: UITableViewCell {

    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblRatingWord: UILabel!
    @IBOutlet weak var lblRatings: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var viewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgUser.layer.cornerRadius = imgUser.frame.height/2
        imgUser.clipsToBounds = true
        
        viewCell.layer.cornerRadius = 20
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
