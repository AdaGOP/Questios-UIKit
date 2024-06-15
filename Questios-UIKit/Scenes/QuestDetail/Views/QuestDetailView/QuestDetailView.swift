//
//  QuestDetailView.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

class QuestDetailView: UIView {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var prizeLabel: UILabel!
        
    func setup(quest: Quest) {
        imageView.image = UIImage(named: quest.url)
        titleLabel.text = quest.title
        levelLabel.text = "Level: \(quest.level)"
        prizeLabel.text = "Prize: \(quest.prize)"
    }
    
}
