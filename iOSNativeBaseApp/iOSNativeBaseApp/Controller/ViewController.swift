//
//  ViewController.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 20/01/23.
//

import UIKit

class ViewController: UIViewController {
    var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(ComponentTableViewCell.self, forCellReuseIdentifier: "ComponentTableViewCell")
        return table
    }()

    var components = [Component]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        title = "NativeBase"
        tableView.dataSource = self
        tableView.delegate = self
        components = DataService().fetchData()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return components.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComponentTableViewCell", for: indexPath) as! ComponentTableViewCell
        cell.configure(components[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ComponentViewController()
        vc.componentData = components[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
