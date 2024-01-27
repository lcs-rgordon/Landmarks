//
//  RecommendationView.swift
//  Landmarks
//
//  Created by Russell Gordon on 2024-01-26.
//

import SwiftUI

struct RecommendationView: View {
    
    let item: Landmark
    
    var body: some View {
        
        Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
            .resizable()
            .scaledToFit()
            .frame(height: 20)
            .padding(5)

    }
}

#Preview {
    HStack {
        RecommendationView(item: sudburyNickel)
        RecommendationView(item: rom)
    }
}
