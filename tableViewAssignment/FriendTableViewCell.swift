//
//  FriendTableViewCell.swift
//  tableViewAssignment
//
//  Created by Aung Ko Ko on 8/7/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
static let identifier = "FriendTableViewCell"
    
    @IBOutlet weak var ivFaceImage: UIImageView!
    @IBOutlet weak var viewFollow: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        viewFollow.layer.cornerRadius = 23
        viewFollow.layer.borderWidth = 2
        viewFollow.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        ivFaceImage.layer.cornerRadius = ivFaceImage.frame.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
