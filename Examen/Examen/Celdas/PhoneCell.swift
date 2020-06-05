//
//  PhoneCell.swift
//  Examen
//
//  Created by Alejandro Rivera on 04/06/20.
//  Copyright © 2020 Alejandro Rivera. All rights reserved.
//

import UIKit

class PhoneCell: UITableViewCell {

    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
       return String(describing: self)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
