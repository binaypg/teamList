//
//  TeamModel.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//


import Foundation

// MARK: - TeamModel
struct TeamModel: Codable ,Hashable {
    var uuid: String?
    var team: String?
    var players: [Player]?
    
    static let example  = TeamModel(uuid: "123", team: "India", players: [Player.example])
}

// MARK: - Player
struct Player: Codable,Hashable {
    var name: String?
    static let example  = Player(name: "Binay")
}

// typealias Welcome = [WelcomeElement]
