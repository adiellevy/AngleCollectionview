//
//  CircularCollectionViewLayoutAttributes.swift
//  AngelCircleCollection
//
//  Created by Adiel Levy on 20/04/2020.
//  Copyright © 2020 Adiel Levy. All rights reserved.
//

import UIKit

class CircularCollectionViewLayoutAttributes: UICollectionViewLayoutAttributes {
    
    var anchorPoint = CGPoint(x: 0.5, y: 0.5)
    var angle: CGFloat = 0 {
        didSet {
            zIndex = Int(angle * 1000000)
            transform = CGAffineTransform(rotationAngle: angle)
//            transform = CGAffineTransform(rotationAngle: CGFloat(Double(angle) - .pi/2))
//           transform = CGAffineTransformMakeRotation(M_PI - Double(angle) - M_PI/2)
        }
    }
    override func copy(with zone: NSZone? = nil) -> Any {
        let copiedAttributes: CircularCollectionViewLayoutAttributes =
            super.copy(with:zone) as! CircularCollectionViewLayoutAttributes
        copiedAttributes.anchorPoint = self.anchorPoint
        copiedAttributes.angle = self.angle
        return copiedAttributes
    }
}
