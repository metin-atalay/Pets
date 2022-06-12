//
//  Dictionary+Extensions.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation

extension Dictionary {
    func decode<T: Decodable>() -> T? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
