//
//  ContentView.swift
//  MV_SwiftUI
//
//  Created by Azizbek Asadov on 21/01/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var store: ProductsStore
    
    var body: some View {
        NavigationView {
            List(store.products) { product in
                Text(product.title)
            }.task {
                do {
                    try await store.fetchProducts()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        .navigationTitle(Text("Products List"))
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: ProductsStore())
    }
}
