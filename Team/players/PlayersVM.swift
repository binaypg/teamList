//
//  PlayersVM.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

class PlayersVM: ObservableObject{
    init(team:TeamModel){
        self.team = team
    }
    @Published var team:TeamModel
}
