//
//  ComponentViewController.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import UIKit

class ComponentViewController: UIViewController {
    var componentData: Component!

    let componentView = UIView()
    let controlView = UIView()

    var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(PropertyTableViewCell.self, forCellReuseIdentifier: "PropertyTableViewCell")
        table.allowsSelection = false
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = componentData.name
        setupUi()
        setupConstraint()
        tableView.dataSource = self
        tableView.delegate = self
        controlView.addSubview(tableView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = controlView.bounds
        switch componentData.name {
        case "Button":
            let component = ButtonView()
            component.frame = componentView.bounds
            componentView.addSubview(component)
        case "Checkbox":
            let component = CheckboxView()
            component.frame = componentView.bounds
            componentView.addSubview(component)
        case "Slider":
            let component = SliderView()
            component.frame = componentView.bounds
            componentView.addSubview(component)
        default: break
        }
    }

    func setupUi() {
        view.backgroundColor = .secondarySystemBackground
        componentView.backgroundColor = .systemBackground
        controlView.backgroundColor = .systemBackground
        view.addSubview(componentView)
        view.addSubview(controlView)
    }

    func setupConstraint() {
        componentView.translatesAutoresizingMaskIntoConstraints = false
        controlView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            componentView.topAnchor.constraint(equalTo: view.topAnchor),
            componentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            componentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            componentView.bottomAnchor.constraint(equalTo: view.centerYAnchor),

            controlView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 25),
            controlView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            controlView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            controlView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),

        ])
    }
}

extension ComponentViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return componentData.properties.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PropertyTableViewCell", for: indexPath) as! PropertyTableViewCell
        cell.configure(componentData.properties[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
