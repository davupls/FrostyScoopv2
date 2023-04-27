//
//  ContentView.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var IceCreamModel = IceCreamsViewModel()
    
    var body: some View {
        VStack {
            homeHeader
         
        }
        .padding()
    }
    
    
    
    
    
    
    
    
    
    
    // MARK: Home Header View
    var homeHeader: some View {
        HStack {
            Text("Hi, David!")
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
            .foregroundColor(.accentColor)
        }
    }
    
    
    
    
}




















struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
