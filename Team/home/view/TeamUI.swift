//
//  TeamUI.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

struct TeamUI: View {
    @ObservedObject var vm = TeamVM()
    var body: some View {
        ScrollView{
            ForEach(vm.teamList, id: \.uuid){ team in
                TeamCellUI(team: team)
            }
        }
        .navigationTitle("Team")
    }
}

struct TeamUI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
                TeamUI()
            }
            NavigationView{
                TeamUI()
            }
            .preferredColorScheme(.dark)
        }
    }
}
