//
//  PropertyTableViewCell.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import UIKit

class PropertyTableViewCell: UITableViewCell {
    func configure(_ property: Property) {
        switch property.type {
        case "segmentedControl":
            let view = SegmentView()
            view.propertyData = property
            view.frame = CGRect(x: 10, y: 10, width: bounds.width, height: bounds.height)
            addSubview(view)
        case "picker":
            let view = PickerView()
            view.propertyData = property
            view.frame = CGRect(x: 10, y: 10, width: bounds.width, height: bounds.height)
            addSubview(view)
        case "switch":
            let view = SwitchView()
            view.propertyData = property
            view.frame = CGRect(x: 10, y: 10, width: bounds.width, height: bounds.height)
            addSubview(view)
        default: break
        }
    }
}
