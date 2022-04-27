//
//  ViewRepostView.swift
//  Lexi
//
//  Created by Macbook on 3/5/22.
//

import SwiftUI

struct NewPostView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
//    @EnvironmentObject var authViewModel: AuthViewModel
//    @ObservedObject var viewModel = UploadPostViewModel()

    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }

                Spacer()

                Button {
//                    viewModel.uploadPost(withCaption: caption)
                } label: {
                    Text("Repost")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color(.white))
                        .clipShape(Capsule())
                }
                .padding()

                HStack(alignment: .top) {
//                    if let user = authViewModel.currentUser {
                        Circle()
                            .frame(width: 64, height: 64)
//                    }

                    TextArea("What's happening", text: $caption)

                }
                .padding()

            }
        }
//        .onReceive(viewModel.$didUploadPost) { success in
//            if success {
//                presentationMode.wrappedValue.dismiss()
//            }
//        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
