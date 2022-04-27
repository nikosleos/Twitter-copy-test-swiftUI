//
//  RepostRowView.swift
//  Lexi
//
//  Created by Macbook on 3/4/22.
//

import SwiftUI

struct PostRowView: View {
//    let post: Post

    var body: some View {
        VStack(alignment: .leading) {
            //Profile image + user info + repost
//            if let user = post.user {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))

                // user info & repost caption
                VStack(alignment: .leading, spacing: 4) {
                    //user info
                    HStack {
                        Text("Good Man")
                            .font(.subheadline).bold()

                        Text("@mail")
                            .foregroundColor(.gray)
                            .font(.caption)

                        Text("2k")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }

                    //post caption
                    Text("Some text....")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
//            }
            // action buttons

            HStack {
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }

                Spacer()

                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }

                Spacer()

                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }

                Spacer()

                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }

            }
            .padding()
            .foregroundColor(.gray)

            Divider()
        }
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView()
    }
}
