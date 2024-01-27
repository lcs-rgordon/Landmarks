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
        
        VStack(spacing: 5) {
            HStack {
                Image(item.image)
                    .resizable()
                    .frame(height: 125)
                    .scaledToFit()
                    .clipShape(
                        Circle()
                    )

                Spacer()
            }
            
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
