//
//  QuestViewModel.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 07/06/24.
//

import Foundation

class QuestViewModel {
    
    var quests: [Quest] = []
    
    public func setupQestViewModel() {
        fetchQuests()
    }
    
    private func fetchQuests() {
        guard let url = Bundle.main.url(
            forResource: "DummyData", withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let quests = try decoder.decode([Quest].self, from: data)
            
            self.quests = quests
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    
}
