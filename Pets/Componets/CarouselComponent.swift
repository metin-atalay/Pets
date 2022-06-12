//
//  CarouselComponent.swift
//  Pets
//
//  Created by Metin Atalay on 10.06.2022.
//

import Foundation
import SwiftUI

struct CarouselComponet: UIComponent {
    
    let uiModel: CarouselUIModel
    
    var id = UUID()
    
    func render() -> AnyView {
        return  CarouselView(uiModel: uiModel).toAnyView()
    }
}
