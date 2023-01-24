//
//  ControlView.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import UIKit

class SwitchView: UIView {
    var propertyData: Property!

    lazy var switchLabel: UILabel = {
        let label = UILabel()
        label.text = propertyData.property
        return label
    }()

    lazy var switchValue: UISwitch = {
        let switchValue = UISwitch()
        switchValue.isOn = true
        switchValue.addTarget(self, action: #selector(onSwitchValueChanged), for: .valueChanged)
        return switchValue
    }()

    lazy var switchStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .equalCentering
        stackView.addArrangedSubview(switchLabel)
        stackView.addArrangedSubview(switchValue)
        return stackView
    }()

    override func layoutSubviews() {
        switchStackView.frame = CGRect(x: 0, y: 0, width: bounds.width - 40, height: bounds.height - 20)
        addSubview(switchStackView)
    }

    @objc func onSwitchValueChanged(_ sender: UISwitch) {
    }
}

class SegmentView: UIView {
    var propertyData: Property!

    lazy var segmentLabel: UILabel = {
        let label = UILabel()
        label.text = propertyData.property
        return label
    }()

    lazy var segmentValue: UISegmentedControl = {
        let control = UISegmentedControl(items: propertyData.values)
        control.addTarget(self, action: #selector(onPickerValueChanged), for: .valueChanged)
        return control
    }()

    lazy var segmentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .equalCentering
        stackView.addArrangedSubview(segmentLabel)
        stackView.addArrangedSubview(segmentValue)
        return stackView
    }()

    override func layoutSubviews() {
        addSubview(segmentStackView)
        segmentStackView.frame = CGRect(x: 0, y: 0, width: bounds.width - 40, height: bounds.height - 20)
    }

    @objc func onPickerValueChanged(_ sender: UISegmentedControl) {
    }
}

class PickerView: UIView {
    var propertyData: Property!
    var pickedValue = 0

    lazy var pickerLabel: UILabel = {
        let label = UILabel()
        label.text = propertyData.property
        return label
    }()

    lazy var leftPicker: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left.circle"), for: .normal)
        button.addTarget(self, action: #selector(onLeftPickerValueChanged), for: .touchUpInside)
        return button
    }()

    lazy var pickerValue: UILabel = {
        let label = UILabel()
        label.text = propertyData.values[pickedValue]
        return label

    }()

    lazy var rightPicker: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right.circle"), for: .normal)
        button.addTarget(self, action: #selector(onRightPickerValueChanged), for: .touchUpInside)
        return button
    }()

    lazy var controlStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(leftPicker)
        stackView.addArrangedSubview(pickerValue)
        stackView.addArrangedSubview(rightPicker)
        return stackView
    }()

    lazy var pickerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(pickerLabel)
        stackView.addArrangedSubview(controlStackView)
        return stackView
    }()

    override func layoutSubviews() {
        pickerStackView.frame = CGRect(x: 0, y: 0, width: bounds.width - 40, height: bounds.height - 20)
        addSubview(pickerStackView)
    }

    @objc func onLeftPickerValueChanged(_ sender: UIButton) {
        pickedValue = abs(pickedValue - 1) % propertyData.values.count
        pickerValue.text = propertyData.values[pickedValue]
    }

    @objc func onRightPickerValueChanged(_ sender: UIButton) {
        pickedValue = abs(pickedValue + 1) % propertyData.values.count
        pickerValue.text = propertyData.values[pickedValue]
    }
}
