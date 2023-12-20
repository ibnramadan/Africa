//
//  CoverImageView.swift
//  Africa
//
//  Created by mohamed ramadan on 17/12/2023.
//

import SwiftUI
struct CoverImageView: View {
    
    // MARK: - PROPERTIES
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //- TabView
        .tabViewStyle(.page)
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
