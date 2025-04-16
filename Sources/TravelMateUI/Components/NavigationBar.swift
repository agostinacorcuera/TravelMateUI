//
//  NavigationBar.swift
//  TravelMateUI
//
//  Created by Agostina Corcuera on 16/04/2025.
//

import SwiftUI

public struct NavigationBar<BackIcon: View, MoreIcon: View>: View {
    public let title: String
    public let backIcon: BackIcon
    public let moreIcon: MoreIcon

    public init(
        title: String,
        @ViewBuilder backIcon: () -> BackIcon,
        @ViewBuilder moreIcon: () -> MoreIcon
    ) {
        self.title = title
        self.backIcon = backIcon()
        self.moreIcon = moreIcon()
    }

    public var body: some View {
        HStack {
            backIcon
                .frame(width: 40, alignment: .leading)

            Spacer()

            Text(title)
                .font(.headline)
                .foregroundColor(.white)

            Spacer()

            moreIcon
                .frame(width: 40, alignment: .trailing)
        }
        .padding()
        .background(
            Color.PrimaryButton
                .clipShape(
                    RoundedCorner(radius: 24, corners: [.bottomLeft, .bottomRight])
                )
        )
    }
}
