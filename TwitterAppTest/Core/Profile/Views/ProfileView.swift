//
//  ProfileView.swift
//  Lexi
//
//  Created by Macbook on 3/4/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectionFilter: PostFilterViewModel = .repost
    @Environment(\.presentationMode) var mode
    @Namespace var animation
//    private let user: User

//    init(user: User) {
//        self.user = user
//    }

    var body: some View {
        VStack(alignment: .leading) {
            headerView

            actionButtons

            userInfoDetails

            repostFilterBar

            postView

            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {

    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()

            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x:16, y: 17)
                }

                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }

    var actionButtons: some View {

        HStack(spacing: 12) {
            Spacer()

            Image(systemName: "bell.badge")
                .font(.title)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))

            Button {
                //
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75))
            }

        }
        .padding(.trailing)
    }

    var userInfoDetails: some View {

        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Name Username")
                    .font(.title2).bold()

                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }

            Text("@mail")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text("Some text")
                .font(.subheadline)
                .padding(.vertical)

            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")

                    Text("Gotham, NY")
                }

                HStack {
                    Image(systemName: "link")

                    Text("www.somesites.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)

            UserStatsView()
                .padding(.vertical)
        }
        .padding(.horizontal)
    }

    var repostFilterBar: some View {
        HStack {
            ForEach(PostFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(selectionFilter == item ? .semibold : .regular)
                        .foregroundColor(selectionFilter == item ? .black : .gray)

                    if selectionFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "Filter", in: animation)
                    }
                    else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectionFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }

    var postView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...9, id: \.self) {_ in
                    PostRowView()
                        .padding()
                }
            }
        }
    }
}
