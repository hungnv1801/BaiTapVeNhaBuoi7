//
//  ZaloTableViewCell.swift
//  UIScrollView
//
//  Created by Nguyen Trung on 11/6/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import UIKit

class ZaloTableViewCell: UITableViewCell {

  
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionView: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
 //       imgView.layer.cornerRadius = imgView.frame.height/2
//        print("Size cua image view sau khi duoc load tu Nib: \(imgView.frame.size.height)")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        
//        self.contentView.layoutSubviews()
//        print("Size cua image view sau khi duoc layout: \(imgView.frame.size.height)")
//    }
    
}
