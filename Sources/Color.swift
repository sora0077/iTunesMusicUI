//
//  Color.swift
//  iTunesMusicUI
//
//  Created by 林達也 on 2016/09/04.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

import Foundation


public indirect enum Color {
    case background
    
    case text
    case link
    case primary
    case secondary
    
    case disabled(Color)
    case highlighted(Color)
    case selected(Color)
}

extension UIColor {
    
    public convenience init(color: Color) {
        switch color {
        case .background:
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
        case .text:
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
        case .link:
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
        case .primary:
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
        case .secondary:
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
        case .disabled(let color):
            self.init(disabled: UIColor(color: color))
        case .highlighted(let color):
            self.init(highlighted: UIColor(color: color))
        case .selected(let color):
            self.init(selected: UIColor(color: color))
        }
    }
    
    private convenience init(disabled: UIColor) {
        self.init(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    private convenience init(highlighted: UIColor) {
        self.init(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    private convenience init(selected: UIColor) {
        self.init(red: 0, green: 0, blue: 0, alpha: 0)
    }
}
