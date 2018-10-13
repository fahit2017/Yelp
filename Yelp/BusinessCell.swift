//
//  BusinessCell.swift
//  Yelp
//
//  Created by Fahit Ahmed on 10/13/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var catagoriesLable: UILabel!
    
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var reviewsCountLable: UILabel!
    @IBOutlet weak var addressLable: UILabel!
    @IBOutlet weak var distanceLable: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var business: Business! {
        didSet {
            nameLable.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            catagoriesLable.text = business.categories
            addressLable.text = business.address
            ratingImageView.image = business.ratingImage
            reviewsCountLable.text = "\(business.reviewCount!) Reviews"
            distanceLable.text = business.distance
            
            
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        nameLable.preferredMaxLayoutWidth = nameLable.frame.size.width
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLable.preferredMaxLayoutWidth = nameLable.frame.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
