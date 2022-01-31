//
//  TeamVM.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import Foundation

class TeamVM:ObservableObject{
    @Published var teamList:[TeamModel] = []
    init(){
        getJsonData()
    }
    
    func getJsonData(){
        guard let url = Bundle.main.url(forResource: "teamData", withExtension: "json")
        else {
            print("Json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let team = try? JSONDecoder().decode([TeamModel].self, from: data!)
        self.teamList = team ?? []
    }
}
