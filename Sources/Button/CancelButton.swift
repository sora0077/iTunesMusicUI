
//
//  CancelButton.swift
//  iTunesMusicUI
//
//  Created by 林達也 on 2016/08/25.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

import Foundation


@IBDesignable
public class CancelButton: UIButton {
    
    public override var frame: CGRect {
        didSet {
            layer.cornerRadius = frame.height / 2
            layer.borderColor = tintColor.cgColor
            layer.borderWidth = 1
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        self.addTarget(
            self, action: #selector(self._touchUp),
            for: [.touchUpInside, .touchUpOutside, .touchDragExit]
        )
        self.addTarget(
            self, action: #selector(self._touchDown),
            for: [.touchDown, .touchDragEnter]
        )
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
     
        setup()
    }
    
    @objc
    private func _touchUp() {
        layer.borderColor = tintColor.cgColor
    }
    
    @objc
    private func _touchDown() {
        layer.borderColor = tintColor.withAlphaComponent(0.3).cgColor
    }
}
