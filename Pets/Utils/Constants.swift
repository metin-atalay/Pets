//
//  Constants.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation

//localhost:3000/pet-listing
struct Constants {
    
    struct ScreenResources {
        static let baseUrl = "localhost:8080"
        static let petListing = "pet-listing"
        
        static func petDetail(petId: Int) -> String {
            return "pet-detail/\(petId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            
            var componets = URLComponents()
            componets.scheme = "http"
            componets.percentEncodedHost = baseUrl
            componets.path =  "/\(resourceName)"
            return componets.url
        }
    }
    
    struct Urls {
    static let baseUrl = "http://localhost:8080/"
        static let petListing = "\(baseUrl)pet-listing"
    }
}
