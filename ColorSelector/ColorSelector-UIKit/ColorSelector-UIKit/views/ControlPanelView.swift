//
//  ControlPanelView.swift
//  ColorSelector-UIKit
//
//  Created by Marky Jordan on 6/5/23.
//

import UIKit

protocol ControlPanelViewDelegate: AnyObject {
    func didChangeColorSelection(color: UIColor)
}

class ControlPanelView: UIView {
    
    weak var delegate: ControlPanelViewDelegate?
    
    private lazy var segmentedControl: UISegmentedControl = {
        let items = ["Red", "Green", "Blue"]
        let control = UISegmentedControl(items: items)
        control.selectedSegmentIndex = 0
        control.addTarget(self, action: #selector(didChangeColorSelection), for: .valueChanged)
        return control
    }()
    
    var selectedColor: UIColor {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return .red
        case 1:
            return .green
        case 2:
            return .blue
        default:
            return .red
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        
        self.addSubview(segmentedControl)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func didChangeColorSelection() {
        delegate?.didChangeColorSelection(color: selectedColor)
    }
    
    private func setupConstraints() {
        // Enable AutoLayout
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup Constraints
        NSLayoutConstraint.activate([
            segmentedControl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            segmentedControl.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
