//
//  Animazioni.swift
//  Meneghetti_Gioco_Quindici
//
//  Created by Matteo Meneghetti on 28/11/2019.
//  Copyright © 2019 MATTEO MENEGHETTI. All rights reserved.
//

import Foundation
import UIKit
extension UIButton {
// Animazione di "tremolio"
    func shake() {
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
}
