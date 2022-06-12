//
//  Action.swift
//  Pets
//
//  Created by Metin Atalay on 10.06.2022.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
    case push
}

struct Action:Decodable {
    let type : ActionType
    let destination: Route
}
