//
//  RatingRowComponet.swift
//  Pets
//
//  Created by Metin Atalay on 11.06.2022.
//

import Foundation
import SwiftUI


struct RatingRowComponet: UIComponent {
    var id =  UUID()
    
    var uiModel : RatingRowUIModel
    
    func render() -> AnyView {
        return  RatingView(rating: .constant( uiModel.rating)).toAnyView()
    }
    
    
}
