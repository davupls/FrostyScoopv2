//
//  CartItemModel.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import Foundation

struct CartItemModel: Identifiable {
    var id : UUID
    var itemName: String
    var itemImage: String
    var itemcost: Float
}


