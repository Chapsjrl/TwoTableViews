//
//  ColorCell.swift
//  Examen
//
//  Created by Alejandro Rivera on 04/06/20.
//  Copyright © 2020 Alejandro Rivera. All rights reserved.
//

import UIKit

class ColorCell: UITableViewCell {
//
//    var colors = ["Rojo", "Verde", "Azul", "Cyan", "Magenta"]
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
       return String(describing: self)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(_ color: String) {
        textLabel?.text = color
    }
    
}
