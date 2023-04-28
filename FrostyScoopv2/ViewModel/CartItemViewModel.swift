//
//  CartItemViewModel.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/28/23.
//

import Foundation

class CartItemViewModel : ObservableObject {
    @Published var EachItem : [CartItemModel]? = []
}
