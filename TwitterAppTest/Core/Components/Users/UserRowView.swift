//
//  UsersRowView.swift
//  Lexi
//
//  Created by Macbook on 3/4/22.
//

import SwiftUI

struct UserRowView: View {
//    let user: User

    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 40, height: 40)

            VStack(alignment: .leading, spacing: 4) {
                Text("Jocker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)

                Text("Health Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
