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
    @State private var isShowingSheet : IceCream.Flavor?
    @EnvironmentObject var cartModel : CartItemViewModel
    
    
    var body: some View {
        VStack {
            homeHeader
            icecreamTypes
            Spacer()
            flavorsCard
            Spacer()
        }
        .padding([.horizontal, .top])
    }
    
    
    
    
    
    
    
    
    
    // MARK: Home Header View
    var homeHeader: some View {
        HStack {
            Text("Hi, David!")
                .font(.largeTitle)
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
    }
    
    // MARK: IceCream Types Horizontal View
    var icecreamTypes: some View {
        ScrollView(.horizontal, showsIndicators: false){
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
                                .cornerRadius(15)
                            Text(CreamType.name)
                                .foregroundColor(.black)
                        }.padding()
                    }
                    
                }
            }
        }
    }
    
    //MARK: Flavors Cards View
    var flavorsCard: some View {
        
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(Array(IceCreamModel.FlavorsData[typeTracker])) { flavors in
                        Button {
                            isShowingSheet = flavors
                        } label: {
                            VStack {
                                Image(flavors.image)
                                    .resizable()
                                    .scaledToFit()
                                
                                VStack {
                                    Text(flavors.name)
                                        .font(.title2)
                                    Text("\(flavors.cost, specifier: "%.2f")")
                                }
                                .padding(.vertical)
                                
                            }

                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                        }
                        .shadow(color: Color("FlavorCardColor"), radius: 4, x: 5, y: 15)
                        .sheet(item: $isShowingSheet) { item in
                            
                            VStack(alignment: .leading) {
                                Image(item.image)
                                    .resizable()
                                Text(item.name)
                                    .font(.largeTitle)
                                Text(item.description)
                                    .padding(.vertical)
                                HStack {
                                    Text("\(item.cost, specifier: "%.2f")")
                                        .font(.title2)
                                    Spacer()
                                    Button("Add To Cart") {
                                        let uid = UUID()
//                                        print("Adding \(item.name) to cart list.")
                                        cartModel.EachItem?.append(CartItemModel(id: uid, itemName: item.name, itemImage: item.image, itemCost: item.cost))
                                        
                                        print(cartModel.EachItem!)
                                    }
                                    .bold()
                                    .frame(minWidth: 125)
                                    .padding()
                                    .background(.yellow)
                                    .cornerRadius(24)
                                    
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            
                        }
                        
                    }
                }
                .padding(.vertical, 20)
            }
            
        }
        
        
    }
    
    
    
}




















struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainView()
            .environmentObject(CartItemViewModel())
    }
}
