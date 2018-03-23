//
//  NYCSchoolCellTableViewCell.swift
//  20180313-SayanBanerjee-NYCSchools
//
//  Created by Sayan Banerjee on 3/12/18.
//  Copyright © 2018 Sayan Banerjee. All rights reserved.
//

import UIKit

class NYCSchoolCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    var dataObject: NYCSchoolModelView = NYCSchoolModelView() {
        didSet {
            self.updateUI()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI() {
        titleLabel.text = dataObject.title
        descriptionLabel.text = dataObject.schoolDescription
    }
}

