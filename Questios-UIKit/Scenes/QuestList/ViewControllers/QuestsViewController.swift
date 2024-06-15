//
//  QuestTableViewController.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

class QuestsViewController: UIViewController {
    
    let questViewModel = QuestViewModel()
    @IBOutlet weak var questsView: QuestsView!

    override func viewDidLoad() {
        super.viewDidLoad()
        questViewModel.setupQestViewModel()
        questsView.setup(viewController: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            guard 
                let destination = segue.destination as? QuestDetailViewController,
                let index = sender as? Int
            else { return }
            destination.quest = questViewModel.quests[index]
        }
    }

}
