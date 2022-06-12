//
//  NetworkService.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation

protocol NetworkService {
    func load(_ resourceName: String) async throws -> ScreenModel
}
