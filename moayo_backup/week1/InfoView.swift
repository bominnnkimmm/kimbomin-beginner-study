//
//  InfoView.swift
//  MyApp
//
//  Created by 김보민 on 10/14/26.
//

// InfoRowView.swift
import SwiftUI

struct InfoRowView: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(.gray)
            Spacer()
            Text(value)
                .bold()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(.gray.opacity(0.1)))
    }
}
