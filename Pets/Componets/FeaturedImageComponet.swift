//
//  FeaturedImageComponet.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation
import SwiftUI

struct FeaturedImageComponet: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    
    var id = UUID()
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            
            image.resizable()
                .aspectRatio(contentMode: .fill)
            
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
    
}
