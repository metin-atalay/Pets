//
//  View+Extensions.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
