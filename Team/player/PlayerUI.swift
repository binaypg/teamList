//
//  PlayerUI.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

struct PlayerUI: View {
    @ObservedObject var vm:PlayerVM
    init(player:Player){
        self.vm = PlayerVM(player: player)
    }
    var body: some View {
        ScrollView{
        VStack{
            Image(vm.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(maxWidth: 300,  alignment: .center)
                
            
            HStack{
                Text(vm.player.name ?? "")
                    .font(.headline)
                Spacer(minLength: 0)
                
                RatingUI(rating: vm.rating)
            }
            
            Text(vm.playerInfo)
                .padding(.vertical)
        }.padding()
        }
        .navigationTitle(vm.player.name ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PlayerUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PlayerUI(player: Player.example)
        }
    }
}
