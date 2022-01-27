//
//  TeamCellUI.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

struct TeamCellUI: View {
    @State var team:TeamModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Text(team.team ?? "")
                    .font(.headline)
                   
                Spacer(minLength: 0)
                Button{
                    
                }label: {
                    Text("View All")
                        .frame(height: 44)
                }
            } .padding(.horizontal)
            ScrollView(.horizontal){
                
                LazyHStack {
                    ForEach(team.players ?? [], id: \.self) {player in
                        Text(player.name ?? "")
                        
                            .foregroundColor(Color("cardText"))
                            .padding()
                            .background(
                                Color("card")
                                    .cornerRadius(AppConstants.corner.radius)
                            )
                    }
                }.padding(.leading)
            }
            Divider().padding(.top)
        }
    }
}

struct TeamCellUI_Previews: PreviewProvider {
    static var previews: some View {
        TeamCellUI(team: TeamModel.example)
            .previewLayout(.fixed(width: 300.0, height: 200.0))
    }
}
