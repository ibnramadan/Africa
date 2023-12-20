//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by mohamed ramadan on 20/12/2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: AnimalModel
    var body: some View {
        GroupBox {
          HStack {
            Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
            
            Group {
              Image(systemName: "arrow.up.right.square")
              
              Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
            }
            .foregroundColor(.accentColor)
          } //: HSTACK
        } //: BOX
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ExternalWeblinkView(animal: animals[0])
}
