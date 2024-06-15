//
//  QuestsView.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

class QuestsView: UIView {
    
    @IBOutlet weak var questsTableView: UITableView!
    
    func setup(viewController: QuestsViewController) {
        
        questsTableView.dataSource = viewController
        questsTableView.delegate = viewController
        
        // create a nib object to prepare the view
        let nib = UINib(nibName: "QuestTableViewCell", bundle: nil)
        self.questsTableView.register(nib, forCellReuseIdentifier: "questIdentifier")
        
    }
    
}
