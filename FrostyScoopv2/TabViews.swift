//
//  TabViews.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            UserCartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
            .environmentObject(CartItemViewModel())
    }
}
