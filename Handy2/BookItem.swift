//
//  BookView.swift
//  HandyBookItem
//
//  Created by 宫澄光 on 3/19/16.
//  Copyright © 2016 cggong. All rights reserved.
//

import Foundation
import UIKit

struct bookinfo {
    let title: String
    let author: String
    let isbn: String
    let oncampus: Int
    let lowestoffer: NSDecimalNumber
}

class BookCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var isbnLabel: UILabel!
    @IBOutlet weak var oncampusLabel: UILabel!
    @IBOutlet weak var lowestofferLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}