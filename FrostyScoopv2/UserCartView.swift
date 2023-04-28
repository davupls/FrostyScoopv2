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
            
            VStack {
                Spacer()
                HStack {
                    Text("Total: ")
                        .padding(.horizontal)
                    Text("00")
                        .font(.title3)
                }
                HStack {
                    Text("Tax:")
                        .padding(.horizontal)
                    Text("00")
                        .font(.title3)
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
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
        ScrollView(showsIndicators: false){
            ForEach(cartModel.EachItem!) { item in
                HStack(alignment: .center) {
                    
                    Image(item.itemImage)
                        .resizable()
                        .scaledToFill()
                        .offset(x: 0, y: 10)
                        .frame(width: 80, height: 100)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 2)
                        }
                        .shadow(radius: 5)
                        .padding(.horizontal, 10)
                    
                    VStack(alignment: .leading) {
                        Text(item.itemName)
                            .font(.system(size: 20, weight: .medium))
                        
                            
                        Text("$\(item.itemCost, specifier: "%.2f")")
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                            
                        }
                    .padding(.bottom)
                    Spacer()
                    
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


//HStack {
//    ZStack {
//        Circle()
//            .frame(width: 30)
//            .foregroundColor(.white)
//            .shadow(radius: 4)
//        Image(systemName: "minus")
//    }
//    Text("1")
//    ZStack {
//        Circle()
//            .frame(width: 30)
//            .foregroundColor(.white)
//            .shadow(radius: 4)
//        Image(systemName: "plus")
//    }
//
//    Image(systemName: "trash")
//}
