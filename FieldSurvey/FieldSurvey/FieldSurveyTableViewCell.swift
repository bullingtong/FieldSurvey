//
//  FieldSurveyTableViewCell.swift
//  FieldSurvey
//
//  Created by Graeson Bullington on 5/2/19.
//  Copyright © 2019 Graeson Bullington. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
