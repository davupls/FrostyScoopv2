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
            Text("Shopping Cart: ")
                .font(.title)
            ForEach(cartModel.EachItem!) { item in
                Text(item.itemName)
            }
            Spacer()
        }
    }
}

struct UserCartView_Previews: PreviewProvider {
    static var previews: some View {
        UserCartView()
            .environmentObject(CartItemViewModel())
    }
}
