//
//  playersUI.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

struct PlayersUI: View {
    @ObservedObject var vm:PlayersVM
    init(team:TeamModel){
        vm = PlayersVM(team: team)
    }
    var body: some View {
        List{
            ForEach(vm.team.players ?? [] ,id: \.self){ team in
                NavigationLink{
                    PlayerUI(player: team)
                }label: {
                    Text(team.name ?? "")
                }
            }
        }.listStyle(.plain)
            .navigationTitle("Players")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct PlayersUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PlayersUI(team: TeamModel.example)
        }
    }
}
