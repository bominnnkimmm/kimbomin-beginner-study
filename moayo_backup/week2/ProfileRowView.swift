//
//  ProfileRowView.swift
//  Moayo_kingchobo
//
//  Created by 김보민 on 10/28/26.
//

import SwiftUI

struct ProfileRowView: View {
    let item: ProfileModel
    let onFollowTap: () -> Void
    
    var body: some View {
        HStack(spacing: 12){
            Image(item.profileImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 3){
                Text(item.username)
                    .font(.system(size: 16, weight: .semibold))
                Text(item.introduction)
                    .font(.system(size: 14))
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(item.isfollowed ? "팔로잉 ✓" : "팔로우") {
                onFollowTap()
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    ProfileRowView(item: ProfileViewModel().profiles[0]) { }
}
