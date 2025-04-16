//
//  TravelCardView.swift
//  TravelMateUI
//
//  Created by Agostina Corcuera on 16/04/2025.
//

import SwiftUI

public struct TravelCardView: View {
    public let title: String
    public let date: String
    public let icon: Image

    public init(title: String, date: String, icon: Image) {
        self.title = title
        self.date = date
        self.icon = icon
    }

    public var body: some View {
        HStack(alignment: .center, spacing: 12) {
            icon
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.leading, 8)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.TextPrimary)
                Text(date)
                    .font(.subheadline)
                    .foregroundColor(.TextPrimary.opacity(0.7))
            }

            Spacer()
        }
        .padding()
        .background(Color.CardBackground)
        .cornerRadius(16)
    }
}
