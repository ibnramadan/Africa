//
//  AnimalListItemView.swift
//  Africa
//
//  Created by mohamed ramadan on 20/12/2023.
//

import SwiftUI

struct AnimalListItemView: View {
    let animal: AnimalModel
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        } //: HStack
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    AnimalListItemView(animal: AnimalModel(id: "1", name: "Lion", headline: "The world's most social felines, lions roam the savannas and grasslands of the African continent, hunting cooperatively and raising cubs in prides. ", description: "", link: "", image: "lion", gallery: [], fact: []))
        .padding()
}
