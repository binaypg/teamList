//
//  ContentView.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TeamUI()
               // .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
