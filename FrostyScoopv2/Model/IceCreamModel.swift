//
//  IceCreamModel.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import Foundation

struct IceCream: Codable, Identifiable {
    var id: Int
    var name, image: String
    var flavors: [Flavor]
    
    
    struct Flavor: Codable, Identifiable {
        var id: Int
        var name, image: String
        var description: String
        var cost: Float
    }
}


