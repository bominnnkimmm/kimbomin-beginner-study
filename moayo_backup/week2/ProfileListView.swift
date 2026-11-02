//
//  ProfileListView.swift
//  Moayo_kingchobo
//
//  Created by 김보민 on 10/28/26.
//

import SwiftUI

struct ProfileListView: View {
    @State private var viewModel = ProfileViewModel()
    
    
    var body: some View {
        NavigationStack{
            List(viewModel.profiles) { profile in
                NavigationLink{
                    ProfileDetailView2(item: profile){
                        viewModel.toggleFollow(id: profile.id)
                    }
                } label: {
                    ProfileRowView(item: profile)
                    {
                        viewModel.toggleFollow(id: profile.id)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    Button("차단") { }
                        .tint(.red)
                }
            }
            .navigationTitle("나의 친구")
        }
        
    }
    
   
}
#Preview {
    ProfileListView()
}
