//
//  UIComponet.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var id : UUID { get }
    func render() -> AnyView
}
