//
//  UserCartView.swift
//  FrostyScoopv2
//
//  Created by David Mclean on 4/27/23.
//

import SwiftUI

struct UserCartView: View {
    @EnvironmentObject var cartModel: CartItemViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            header
            itemsList
            
        }
        .padding()
    }
    
    
    
    
    var header: some View {
        HStack {
            Text("Shopping Cart: ")
                .font(.title)
                .padding()
        }
    }
    
    var itemsList: some View {
        ScrollView {
            ForEach(0..<5) { item in
                HStack {
                    Image("chocolate gelato")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                        VStack {
                            Text("Chocolate Gelato")
                            
                            Text("\(4.56, specifier: "%.2f")")
                        }
                        .padding()
                        
                        
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 30)
                                    .foregroundColor(.white)
                                    .shadow(radius: 4)
                                Image(systemName: "minus")
                            }
                            Text("1")
                            ZStack {
                                Circle()
                                    .frame(width: 30)
                                    .foregroundColor(.white)
                                    .shadow(radius: 4)
                                Image(systemName: "plus")
                            }
                            
                            Image(systemName: "trash")
                        }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
}

struct UserCartView_Previews: PreviewProvider {
    static var previews: some View {
        UserCartView()
            .environmentObject(CartItemViewModel())
    }
}




//var itemsList: some View {
//    ScrollView {
//        ForEach(cartModel.EachItem!) { item in
//            HStack {
//                Image(item.itemImage)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 60, height: 60)
//
//                    VStack {
//                        Text(item.itemName)
//
//                        Text("\(item.itemcost, specifier: "%.2f")")
//                    }
//                    .padding()
//
//
//                    HStack {
//                        ZStack {
//                            Circle()
//                                .frame(width: 30)
//                                .foregroundColor(.white)
//                                .shadow(radius: 4)
//                            Image(systemName: "minus")
//                        }
//                        Text("1")
//                        ZStack {
//                            Circle()
//                                .frame(width: 30)
//                                .foregroundColor(.white)
//                                .shadow(radius: 4)
//                            Image(systemName: "plus")
//                        }
//
//                        Image(systemName: "trash")
//                    }
//            }
//        }
//    }
//    .frame(maxWidth: .infinity, alignment: .leading)
//}
