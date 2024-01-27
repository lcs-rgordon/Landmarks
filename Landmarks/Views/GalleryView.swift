//
//  GalleryView.swift
//  Landmarks
//
//  Created by Russell Gordon on 2024-01-26.
//

import SwiftUI

struct GalleryView: View {
    
    var body: some View {
        
        NavigationView {
            List(allLandmarks) { currentLandMark in
                
                NavigationLink {
                    DetailView(item: currentLandMark)
                } label: {
                    GalleryItemView(item: currentLandMark)
                }
                .tint(.black)

                
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    GalleryView()
}
