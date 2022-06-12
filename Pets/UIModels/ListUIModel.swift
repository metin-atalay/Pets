//
//  ListUIModel.swift
//  Pets
//
//  Created by Metin Atalay on 11.06.2022.
//

import Foundation

struct RowUIModel: Decodable {
    let id: Int
    let title: String
    let subTitle: String?
    let imageUrl: URL?
    let description: String?
}

struct ListUIModel: Decodable {
    let rows: [RowUIModel]
    let action: Action
}
