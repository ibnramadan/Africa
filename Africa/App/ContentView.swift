//
//  ContentView.swift
//  Africa
//
//  Created by mohamed ramadan on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [AnimalModel] = Bundle.main.decode("animals.json")
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            } //: List
            .listStyle(.plain)
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: Navigation
    }
}

#Preview {
    ContentView()
}
