//
//  ScreenModel.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation

enum ComponetError: Error {
    case decodingError
}

enum ComponentType: String, Decodable {
    case featuredImage
    case carousel
    case textRow
    case ratingRow
    case list
}

struct ComponentModel: Decodable {
    let type: ComponentType?
    let data: [String: Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try? container.decode(ComponentType.self, forKey: .type)
        self.data = try container.decode(JSON.self, forKey: .data).value as! [String: Any]
        
    }
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponets() throws -> [UIComponent] {
        var componets: [UIComponent] = []
        
        for componet in self.components {
            switch componet.type {
            case .featuredImage:
                guard let uiModel: FeaturedImageUIModel = componet.data.decode() else {
                    throw ComponetError.decodingError
                }
                componets.append(FeaturedImageComponet(uiModel: uiModel))
            case .carousel:
                guard let uiModel: CarouselUIModel = componet.data.decode() else {
                    throw ComponetError.decodingError
                }
                componets.append(CarouselComponet(uiModel: uiModel))
            case .textRow:
                guard let uiModel: TextRowUIModel = componet.data.decode() else {
                    throw ComponetError.decodingError
                }
                componets.append(TextRowComponent(uiModel: uiModel))
            case .ratingRow:
                guard let uiModel: RatingRowUIModel = componet.data.decode() else {
                    throw ComponetError.decodingError
                }
                componets.append(RatingRowComponet(uiModel: uiModel))
            case .list:
                guard let uiModel: ListUIModel = componet.data.decode() else {
                    throw ComponetError.decodingError
                }
                componets.append(ListComponent(uiModel: uiModel))
            case .none:
                print("noned")
            }
        }
        return componets
    }
}
