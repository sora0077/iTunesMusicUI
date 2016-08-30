//
//  LayerView.swift
//  iTunesMusicUI
//
//  Created by 林達也 on 2016/08/30.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

import UIKit


@IBDesignable
public class LayerView: UIView {
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    public var shadowColor: UIColor? {
        didSet {
            layer.shadowColor = shadowColor?.cgColor
        }
    }
    
    @IBInspectable
    public var shadowOffset: CGSize = .zero {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable
    public var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable
    public var shadowOpacity: Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
