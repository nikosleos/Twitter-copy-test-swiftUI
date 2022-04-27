//
//  FeedView.swift
//  Lexi
//
//  Created by Macbook on 3/4/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewRepostView = false
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        PostRowView()
                            .padding()
                    }
                }
            }
            Button {
                showNewRepostView.toggle()
                print("Show new repost view...")
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(Color(.white))
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewRepostView) {
                NewPostView()
            }

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
