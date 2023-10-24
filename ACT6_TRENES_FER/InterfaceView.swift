//
//  InterfaceView.swift
//  ACT6_TRENES_FER
//
//  Created by Fernanda M. Guzmán on 24/10/23.
//



import SwiftUI


extension String {
    func loadImage() -> UIImage {
        do{
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data : Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
        } catch {}
        
        return UIImage()
    }
}

struct InterfaceView: View {
    
    var data : [String]
    
    var body: some View {
        VStack(spacing: 10){
            ForEach(data, id: \.self) { item in
                VStack{
                    Image(uiImage: item.loadImage())
                        .resizable()
                        .aspectRatio(contentMode: .fill )
                        .frame(height: 150)
                }
                .padding()
                .modifier(Modifier())
            }
        }
    }
}

struct InterfaceView_Previews: PreviewProvider {
    static var previews: some View {
        InterfaceView(data: ["1", "2"])
    }
}
