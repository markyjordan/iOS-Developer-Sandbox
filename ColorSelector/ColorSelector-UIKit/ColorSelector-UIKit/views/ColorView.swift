//
//  ColorView.swift
//  ColorSelector-UIKit
//
//  Created by Marky Jordan on 6/5/23.
//

import UIKit

class ColorView: UIView {
    
    var color: UIColor = .red {
        didSet {
            self.backgroundColor = color
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
