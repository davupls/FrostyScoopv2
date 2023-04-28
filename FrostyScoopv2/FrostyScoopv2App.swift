//
//  FrostyScoopv2App.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import SwiftUI

@main
struct FrostyScoopv2App: App {
    var body: some Scene {
        WindowGroup {
            TabViews()
                .environmentObject(CartItemViewModel())
                .preferredColorScheme(.light)
        }
    }
}
