//
//  DataModel.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

struct DataModel: Codable {
    let components: [Component]
}

struct Component: Codable {
    let name: String
    let properties: [Property]
}

struct Property: Codable {
    let property: String
    let type: String
    let values: [String]
}
