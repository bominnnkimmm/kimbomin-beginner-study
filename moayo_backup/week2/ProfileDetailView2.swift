//
//  ProfileDetailView2.swift
//  Moayo_kingchobo
//
//  Created by 김보민 on 10/28/26.
//

import SwiftUI

struct ProfileDetailView2: View {
    let item: ProfileModel
    let onFollowTap: () -> Void
    
    var body: some View {
        VStack(spacing: 20){
            Image(item.profileImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            
            Text(item.username)
                .font(.system(size: 32,weight: .semibold))
            
            Text(item.introduction)
                .font(.system(size: 24))
            
            HStack(spacing: 20){
                Text("나이: \(item.age)")
                
                Text("전공: \(item.major)")
            }
    
            Button(item.isfollowed ? "팔로잉 ✓" : "팔로우") {
                onFollowTap()
            }
            .buttonStyle(.bordered)
        
        }
        .padding(.horizontal, 16)
        .navigationTitle(item.username)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileDetailView2(item: ProfileViewModel().profiles[0], onFollowTap: {})
}
