//
//  TableViewCellmia.swift
//  EXAMEN_PARCIAL2F
//
//  Created by TEMPORAL2 on 05/04/17.
//  Copyright © 2017 EQUIPOBANANA. All rights reserved.
//

import UIKit

class TableViewCellmia: UITableViewCell {

    @IBOutlet weak var threeStar: UIImageView!
    @IBOutlet weak var twoStar: UIImageView!
    @IBOutlet weak var oneStar: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var direccion: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    var oneS = ""
    var twoS = ""
    var threeS = ""
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        oneStar.image = UIImage(named: oneS)
        twoStar.image = UIImage(named: twoS)
        threeStar.image = UIImage(named: threeS)
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
