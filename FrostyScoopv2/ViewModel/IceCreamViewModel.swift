//
//  IceCreamViewModel.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import Foundation

class IceCreamsViewModel: ObservableObject {
    @Published var decodedIceCreamJson: [IceCream] = []
    
    init() {
        loadIceCreamJson()
    }
    
    func loadIceCreamJson() {
        guard let url = Bundle.main.url(forResource: "icecream-data", withExtension: "json") else {
            fatalError("Could not load json.")
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([IceCream].self, from: data)
            decodedIceCreamJson = decodedData
            
        } catch {
            print("Error decoding icecream-data.json: \n \(error)")
        }
        
        
    }
}
