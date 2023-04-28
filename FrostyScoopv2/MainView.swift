//
//  ContentView.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var IceCreamModel = IceCreamsViewModel()
    
    var body: some View {
        VStack {
            homeHeader
            ScrollView(.horizontal){
                HStack{
                    ForEach(IceCreamModel.decodedIceCreamJson) { CreamType in
                        VStack {
                            Text(CreamType.name)
                        }.padding()
                    }
                }
            }
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
        MainView()
    }
}
