//
//  InsetGalleryView.swift
//  Africa
//
//  Created by mohamed ramadan on 20/12/2023.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: AnimalModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    InsetGalleryView(animal: animals[0])
}
