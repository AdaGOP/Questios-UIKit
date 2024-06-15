//
//  QuestDetailViewController.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

class QuestDetailViewController: UIViewController {
    
    @IBOutlet weak var questDetailView: QuestDetailView!
    
    var quest: Quest?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let quest = self.quest else { return }
        questDetailView.setup(quest: quest)
    }
}
