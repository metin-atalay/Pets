//
//  ListComponent.swift
//  Pets
//
//  Created by Metin Atalay on 11.06.2022.
//

import Foundation
import SwiftUI

struct ListComponent: UIComponent {
    
    let id = UUID()
    let uiModel :  ListUIModel
    
    func render() -> AnyView {
        
        ForEach(uiModel.rows, id: \.id) { row in
            
            Navigator.perform(action: uiModel.action, payload: row) {
                RowComponent(uiModel: row).render().toAnyView()
            }
            
           
        }.toAnyView()
    }
    
}
