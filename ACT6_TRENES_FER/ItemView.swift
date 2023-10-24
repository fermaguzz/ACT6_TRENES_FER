//
//  ItemView.swift
//  ACT6_TRENES_FER
//
//  Created by Fernanda M. Guzmán on 24/10/23.
//

import SwiftUI

struct ItemView: View {
    
    var name : String
    var color : Color
    var icon : String
    
    var body: some View {
        VStack() {
            HStack(){
                Spacer()
                
            }
            
            Image(systemName: icon)
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(color)
                .aspectRatio(contentMode: .fit )
                .frame(width: 120, height: 100)
            
            Text(name)
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame( maxWidth: .infinity)
            
            
        }
        .modifier(Modifier())
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(
            name: "Nombre",
            color: Color.black,
            icon: "tram.circle.fill"
        )
    }
}

