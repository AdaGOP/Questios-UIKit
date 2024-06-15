//
//  QuestsViewController+TableView.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

extension QuestsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questViewModel.quests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = questsView.questsTableView.dequeueReusableCell(withIdentifier: "questIdentifier", for: indexPath) as! QuestTableViewCell
        
        cell.selectionStyle = .none
        cell.quest = questViewModel.quests[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96.0
    }
    
}
