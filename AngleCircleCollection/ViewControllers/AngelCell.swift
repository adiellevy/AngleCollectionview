//
//  AngelCell.swift
//  AngelCircleCollection
//
//  Created by Adiel Levy on 20/04/2020.
//  Copyright © 2020 Adiel Levy. All rights reserved.
//

import UIKit

class AngelCell: UICollectionViewCell {
    
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var vBackgroundLbl: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        let circularlayoutAttributes = layoutAttributes as! CircularCollectionViewLayoutAttributes
        self.layer.anchorPoint = circularlayoutAttributes.anchorPoint
        self.center.y += (circularlayoutAttributes.anchorPoint.y - 0.5) * self.bounds.height
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.vBackgroundLbl.layer.masksToBounds = true
        self.vBackgroundLbl.layer.cornerRadius = CGFloat(roundf(Float(self.vBackgroundLbl.frame.size.width/2.0)))
    }
}
