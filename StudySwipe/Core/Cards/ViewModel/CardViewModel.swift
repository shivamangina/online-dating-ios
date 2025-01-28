//
//  CardViewModel.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 27/01/25.
//

import Foundation

class CardViewModel: ObservableObject {
    
    @Published var CardModels : [CardModel] =  [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        
        self.service = service
        Task {
            await fetchCardModels()
        }
    }
    
    func fetchCardModels() async {
        
        do {
            CardModels =  try await service.fetchCardDetails()
        } catch {
            print("Error fetching data: \(error)")
        }
        
        
    }
    
    func removeCard(_ card: CardModel) {
        guard let index = CardModels.firstIndex(where: { $0.id == card.id }) else { return }
        CardModels.remove(at: index)
    }
    
}
