//
//  ContentView.swift
//  ACT6_TRENES_FER
//
//  Created by Fernanda M. Guzmán on 24/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: InterfaceView(data: [
                        "https://i.pinimg.com/originals/44/d2/38/44d238294e141281b9b39b795b730a79.jpg",
                        "https://content.vivaaerobus.com/Upload-VB/new-site/press-room/Viva-Aerobus-Logotipo.png",
                        "https://s3.amazonaws.com/cdn.wp.m4ecmx/wp-content/uploads/2018/05/08134442/VolarisLogo1200.jpg"
                    ]),
                    label: {
                        ItemView(
                            name: "Aviones",
                            color: Color.purple,
                            icon: "airplane.departure"
                        )
                    }
                )
                NavigationLink(
                    destination: InterfaceView(data: [
                        "https://i.pinimg.com/736x/fb/42/a9/fb42a95b8ee5653d42fb2017ce1ed958.jpg",
                        "https://www.lasmasinnovadoras.com/sectorprivado/wp-content/uploads/transpais.jpg"
                        
                    ]),
                    label: {
                        ItemView(
                            name: "Autobuses",
                            color: Color.purple,
                            icon: "bus"
                        )
                    }
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
