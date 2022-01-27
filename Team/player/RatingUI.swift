//
//  RatingUI.swift
//  Team
//
//  Created by Binay Kumar Sharma on 27/01/22.
//

import SwiftUI

struct RatingUI: View {
    @State var rating:Int
    var body: some View {
        HStack{
            
            ForEach(0..<rating) { number in
                Image(systemName: "suit.heart.fill")
            }
            ForEach(0..<5-rating) { number in
                Image(systemName: "suit.heart")
            }
        }
    }
}

struct RatingUI_Previews: PreviewProvider {
    static var previews: some View {
        RatingUI(rating: 2)
            .previewLayout(.fixed(width: 300.0, height: 100.0))
    }
}
