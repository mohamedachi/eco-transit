//
//  FavoriteView.swift
//  ecotransit
//
//  Created by Mohamed Achi on 8/11/2023.
//

import SwiftUI

struct FavoriteView: View {
    
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentSideMenu.toggle()
                } label: {
                    Image("menu")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                Spacer()
            }
            
            Spacer()
            Text("Favorite View")
            Spacer()
        }      .navigationBarHidden(true)
        .padding(.horizontal, 24)
    }
}

#Preview {
    LoginInView()
}
