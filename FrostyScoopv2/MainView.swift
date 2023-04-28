//
//  ContentView.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var IceCreamModel = IceCreamsViewModel()
    @State private var typeTracker = 0
    
    
    var body: some View {
        VStack {
            homeHeader
            icecreamTypes
            
            VStack {
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(Array(IceCreamModel.FlavorsData[typeTracker])) { flavors in
                            Text(flavors.name)
                                .padding()
                        }
                    }
                }
                
            }
            .padding()
        }
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
    
    // MARK: IceCream Types Horizontal View
    var icecreamTypes: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(IceCreamModel.decodedIceCreamJson) { CreamType in
                    Button {
                        typeTracker = CreamType.id - 1
                    } label: {
                        VStack {
                            Image(CreamType.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text(CreamType.name)
                                .foregroundColor(.black)
                        }.padding()
                    }
                    
                }
            }
        }
    }
    
    
    
    
}




















struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainView()
    }
}
