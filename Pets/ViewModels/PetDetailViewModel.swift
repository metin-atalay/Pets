//
//  PetDetailViewModel.swift
//  Pets
//
//  Created by Metin Atalay on 11.06.2022.
//

import Foundation

@MainActor
class PetDetailViewModel: ObservableObject {
    
    private var service: NetworkService
    @Published var componets: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load(petId: Int) async {
        do {
            let screenModel = try await service.load(Constants.ScreenResources.petDetail(petId: petId))
            self.componets = try screenModel.buildComponets()
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
