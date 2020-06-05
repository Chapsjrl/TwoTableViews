//
//  GenderCell.swift
//  Examen
//
//  Created by Alejandro Rivera on 04/06/20.
//  Copyright © 2020 Alejandro Rivera. All rights reserved.
//

import UIKit

class GenderCell: UITableViewCell {
    
    @IBOutlet weak var textLabel1: UILabel?
    @IBOutlet weak var switchState1: UISwitch?
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
       return String(describing: self)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        textLabel1?.text = "Masculino"
        switchState1?.isOn = false
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(_ gender: String) {
        textLabel1?.text = gender
    }
    
}
