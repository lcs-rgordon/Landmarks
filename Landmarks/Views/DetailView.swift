//
//  DetailView.swift
//  Landmarks
//
//  Created by Russell Gordon on 2024-01-26.
//

import SwiftUI

struct DetailView: View {
    
    let item: Landmark
    
    var body: some View {
        ScrollView {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                RecommendationView(item: item)
                Spacer()
            }
            .padding(.horizontal)
            
            Text(item.description)
            .padding(.horizontal)
        }
        .navigationTitle("Sudbury Nickel")
    }
}

#Preview {
    NavigationStack {
        DetailView(item: sudburyNickel)
    }
}
