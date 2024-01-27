//
//  GalleryView.swift
//  Landmarks
//
//  Created by Russell Gordon on 2024-01-26.
//

import SwiftUI

struct GalleryView: View {
    
    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: twoColumns) {
                    ForEach(allLandmarks) { currentLandMark in
                        
                        NavigationLink {
                            DetailView(item: currentLandMark)
                        } label: {
                            GalleryItemView(item: currentLandMark)
                        }
                        .tint(.primary)

                        
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    GalleryView()
}
