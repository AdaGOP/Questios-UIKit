//
//  QuestViewController+TableViewDelegate.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 15/06/24.
//

import UIKit

extension QuestsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath.row)
    }
}
