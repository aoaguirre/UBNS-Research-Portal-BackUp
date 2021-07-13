//
//  ShadowingTableViewCell.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 7/9/21.
//

import UIKit

class ShadowingTableViewCell: UITableViewCell {

    @IBOutlet weak var shadowingdatelabel: UILabel!
    
    @IBOutlet weak var shadowingtimelabel: UILabel!
    
    @IBOutlet weak var doctornamelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
    }
    
    func configureCell(shadowing: ShadowEvent) {
        shadowingdatelabel.text = shadowing.shadowdate
        shadowingtimelabel.text = shadowing.shadowingtime
        doctornamelabel.text = shadowing.shadowingdoctor
    }

}
