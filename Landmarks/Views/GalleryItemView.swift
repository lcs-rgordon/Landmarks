//
//  GalleryItemView.swift
//  Landmarks
//
//  Created by Russell Gordon on 2024-01-26.
//

import SwiftUI

struct GalleryItemView: View {
    
    let item: Landmark
    
    var body: some View {
        
        VStack(spacing: 0) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(height: 125)
                .clipShape(
                    Circle()
                )
                .padding(.bottom, 10)

            Text(item.name)
                .font(.headline)
                .multilineTextAlignment(.center)

            Spacer()
            
            RecommendationView(item: item)
            
        }
        .padding()
        
    }
}

#Preview {
    GalleryView()
}
