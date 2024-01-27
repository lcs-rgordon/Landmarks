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
        
        Text(item.name)
        
    }
}

#Preview {
    GalleryItemView(item: sudburyNickel)
}


#Preview {
    GalleryView()
}
