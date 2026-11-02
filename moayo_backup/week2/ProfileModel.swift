//
//  ProfileModel.swift
//  Moayo_kingchobo
//
//  Created by 김보민 on 10/28/26.
//

import Foundation

struct ProfileModel: Identifiable {
    let id = UUID()
    let username: String
    let profileImageName: String
    let age: Int
    let major: String
    let introduction: String
    var isfollowed = false

}

