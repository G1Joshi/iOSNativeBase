//
//  ComponentTableViewCell.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import UIKit

class ComponentTableViewCell: UITableViewCell {
    func configure(_ component: Component) {
        let label = UILabel()
        label.text = component.name
        label.frame = CGRect(x: 10, y: 0, width: bounds.width, height: bounds.height)
        addSubview(label)
    }
}
