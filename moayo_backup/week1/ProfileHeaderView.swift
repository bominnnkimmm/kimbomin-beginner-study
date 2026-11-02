//
//  ProfileHeaderView.swift
//  MyApp
//
//  Created by 김보민 on 10/14/26.
//

// ProfileHeaderView.swift
import SwiftUI

struct ProfileHeaderView: View {
    let name: String

    var body: some View {
        VStack(spacing: 12) {
            Image(.shungPng)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.blue)
                

            Text(name)
                .font(.title)
                .bold()
        }
    }
}
