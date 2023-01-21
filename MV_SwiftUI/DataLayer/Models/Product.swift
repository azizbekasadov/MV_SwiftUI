//
//  Product.swift
//  MV_SwiftUI
//
//  Created by Azizbek Asadov on 21/01/23.
//

import Foundation

public struct Product: Decodable, Identifiable {
    public let id: Int
    public let title: String
    
    public init(id: Int, title: String) {
        self.id = id
        self.title = title
    }
}
