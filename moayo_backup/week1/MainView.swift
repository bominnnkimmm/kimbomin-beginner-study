//
//  MainView.swift
//  MyApp
//
//  Created by 김보민 on 10/14/26.
//

// IntroView.swift
import SwiftUI

struct MainView: View {
    let profile = Profile(
        name: "김보민",
        age: 24,
        major: "컴퓨터과학전공",
        introduction: "안녕하세요 반가워용"
    )

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                ProfileHeaderView(name: profile.name)
                

                Text(profile.introduction)
                    .multilineTextAlignment(.center)

                NavigationLink("상세 프로필 보기", value: profile)
                    .buttonStyle(.borderedProminent)
                    
            }
            .padding()
            .navigationTitle("자기소개")
            .navigationDestination(for: Profile.self) { profile in
                ProfileDetailView(profile: profile)
            }
        }
    }
}

#Preview {
    MainView()
}
