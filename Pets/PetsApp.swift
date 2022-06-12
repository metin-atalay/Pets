//
//  PetsApp.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import SwiftUI

@main
struct PetsApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            ContentView()
        }
    }
}
