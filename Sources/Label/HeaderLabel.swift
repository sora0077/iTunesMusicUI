//
//  HeaderLabel.swift
//  iTunesMusicUI
//
//  Created by 林達也 on 2016/08/23.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

import Foundation


open class HeaderLabel: UILabel {
    
    @IBInspectable
    public var headingColor: UIColor? {
        didSet {
            before.backgroundColor = headingColor
        }
    }
    
    let before = UIView()
    
    var fontSize: CGFloat { fatalError() }
    var fontWeight: CGFloat { fatalError() }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    private func setup() {
        addSubview(before)
        
        font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        
        before.frame.size.width = 0.16 * fontSize
        before.backgroundColor = textColor
    }
    
    open override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.width += before.frame.width + 4
        return size
    }
    
    open override func drawText(in rect: CGRect) {
        var rect = rect
        rect.origin.x += before.frame.width + 4
        super.drawText(in: rect)
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        before.frame.size.height = frame.height
    }
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
    }
}

@IBDesignable
open class Header1Label: HeaderLabel {
    
    override var fontSize: CGFloat { return 63 }
    
    override var fontWeight: CGFloat { return UIFontWeightHeavy }
}



@IBDesignable
open class Header2Label: HeaderLabel {
    
    override var fontSize: CGFloat { return 47 }
    
    override var fontWeight: CGFloat { return UIFontWeightBold }
}



@IBDesignable
open class Header3Label: HeaderLabel {
    
    override var fontSize: CGFloat { return 36 }
    
    override var fontWeight: CGFloat { return UIFontWeightBold }
}



@IBDesignable
open class Header4Label: HeaderLabel {
    
    override var fontSize: CGFloat { return 27 }
    
    override var fontWeight: CGFloat { return UIFontWeightSemibold }
}



@IBDesignable
open class Header5Label: HeaderLabel {
    
    override var fontSize: CGFloat { return 20 }
    
    override var fontWeight: CGFloat { return UIFontWeightSemibold }
}


