//
//  QuestTableViewCell.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

class QuestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var prizeLabel: UILabel!

    var quest: Quest? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        imageCell.image = UIImage(named: quest?.url ?? "")
        imageCell.layer.cornerRadius = 4
        titleLabel.text = quest?.title
        levelLabel.text = quest?.level
        prizeLabel.text = "Prize: \(quest?.prize ?? "")"
    }
    
    
}
