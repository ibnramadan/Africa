//
//  VideoListView.swift
//  Africa
//
//  Created by mohamed ramadan on 17/12/2023.
//

import SwiftUI

struct VideoListView: View {
    let videos: [VideoModel] = Bundle.main.decode("videos.json")
    var body: some View {
        NavigationStack {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    VideoListView()
}
