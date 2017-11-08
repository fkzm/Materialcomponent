//
//  Shadow.swift
//  
//
//  Created by Fateme' Kazemi on 8/17/1396 AP.
//
//

import UIKit
import MaterialComponents

class Shadow: UIView {
    
    override class var layerClass: AnyClass {
        return MDCShadowLayer.self
    }
    
    var shadowLayer: MDCShadowLayer {
        return self.layer as! MDCShadowLayer
    }
    
    func setDefaultElevation() {
        self.shadowLayer.elevation = MDCShadowElevationCardResting
    }
    
}


