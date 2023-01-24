//
//  ComponentView.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import UIKit

class ButtonView: UIView {
    let component = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))

    override func layoutSubviews() {
        addSubview(component)
        component.backgroundColor = .systemCyan
        component.setTitle("Button", for: .normal)
        component.center = center
    }
}

class CheckboxView: UIView {
    let component = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))

    override func layoutSubviews() {
        addSubview(component)
        component.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        component.center = center
    }
}

class SliderView: UIView {
    let component = UISlider(frame: CGRect(x: 0, y: 0, width: 100, height: 50))

    override func layoutSubviews() {
        addSubview(component)
        component.value = 0.5
        component.center = center
    }
}
