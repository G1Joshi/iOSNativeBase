//
//  DataService.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import Foundation

struct DataService {
    func fetchData() -> [Component] {
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONDecoder().decode(DataModel.self, from: data)
                return jsonResult.components
            } catch {
                print(error.localizedDescription)
            }
        }
        return []
    }
}
