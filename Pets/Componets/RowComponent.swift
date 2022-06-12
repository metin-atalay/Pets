//
//  RowComponent.swift
//  Pets
//
//  Created by Metin Atalay on 11.06.2022.
//

import Foundation
import SwiftUI

struct RowComponent: UIComponent{
    var id = UUID()
    
    var uiModel : RowUIModel
    
    func render() -> AnyView {
        
        HStack {
            if let imageUrl = uiModel.imageUrl {
                AsyncImage(url: imageUrl) { image in
                    image.resizable()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }.toAnyView()
            }
            
            VStack(alignment: .leading) {
                Text(uiModel.title)
                Text(uiModel.subTitle ?? "").opacity(0.4)
                Text(uiModel.description ?? "")
            }
        }.padding()
            .toAnyView()
        
    }
    
    
}
