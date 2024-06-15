//
//  Quest.swift
//  Questios-UIKit
//
//  Created by Handy Handy on 07/06/24.
//

import Foundation

struct Quest: Identifiable, Codable {
    let id: String
    let title: String
    let url: String
    let level: String
    let prize: String
}


extension Quest {
    static func fake() -> Self {
        return Quest(id: "1", title: "", url: "asda", level: "1", prize: "5")
    }
}
