//
//  ProductsStore.swift
//  MV_SwiftUI
//
//  Created by Azizbek Asadov on 21/01/23.
//

import SwiftUI

@MainActor
public final class ProductsStore: ObservableObject {
    @Published public var products: [Product] = []
    
    public func fetchProducts() async throws {
        self.products = try await API().getAllProducts()
    }
}
