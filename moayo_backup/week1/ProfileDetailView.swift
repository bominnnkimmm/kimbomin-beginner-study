//
//  ProfileDetailView.swift
//  MyApp
//
//  Created by 김보민 on 10/14/26.
//

// ProfileDetailView.swift
import SwiftUI

struct ProfileDetailView: View {
    let profile: Profile
    @State private var isFollowing = false

    var body: some View {
        VStack(spacing: 24) {
            ProfileHeaderView(name: profile.name)
            infoSection
            followButton
            Spacer()
        }
        .padding()
        .navigationTitle("상세 프로필")
    }

    private var infoSection: some View {
        VStack(spacing: 12) {
            InfoRowView(title: "이름", value: profile.name)
            InfoRowView(title: "나이", value: "\(profile.age)살")
            InfoRowView(title: "전공", value: profile.major)
        }
    }

    private var followButton: some View {
        Button(isFollowing ? "팔로잉 ✓" : "팔로우") {
            isFollowing.toggle()
        }
        .buttonStyle(.bordered)
    }
}
