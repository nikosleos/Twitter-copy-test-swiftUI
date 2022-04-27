//
//  ExploreView.swift
//  Lexi
//
//  Created by Macbook on 3/4/22.
//

import SwiftUI

struct ExploreView: View {
    @ObservedObject var viewModel = ExploreViewModel()
    @State private var searchText = ""

    var body: some View {
            VStack {
                SearchBar(text: $searchText)
                    .padding()
                
                ScrollView {
                    LazyVStack {
                        ForEach(0...25,id: \.self) {_ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
