//
//  ViewController.swift
//  ColorSelector-UIKit
//
//  Created by Marky Jordan on 6/5/23.
//

import UIKit

class ViewController: UIViewController, ControlPanelViewDelegate {
    
    let colorView = ColorView()
    let controlPanelView = ControlPanelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controlPanelView.delegate = self
        
        self.view.addSubview(colorView)
        self.view.addSubview(controlPanelView)
        
        setupConstraints()
        
        colorView.color = controlPanelView.selectedColor // Set initial color
    }
    
    func didChangeColorSelection(color: UIColor) {
        colorView.color = color
    }
    
    private func setupConstraints() {
        // Enable AutoLayout
        colorView.translatesAutoresizingMaskIntoConstraints = false
        controlPanelView.translatesAutoresizingMaskIntoConstraints = false

        // Setup constraints
        NSLayoutConstraint.activate([
            colorView.topAnchor.constraint(equalTo: self.view.topAnchor),
            colorView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            colorView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            colorView.bottomAnchor.constraint(equalTo: controlPanelView.topAnchor),
            
            controlPanelView.topAnchor.constraint(equalTo: colorView.bottomAnchor),
            controlPanelView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            controlPanelView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            controlPanelView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
            colorView.heightAnchor.constraint(equalTo: controlPanelView.heightAnchor)
        ])
    }
}
