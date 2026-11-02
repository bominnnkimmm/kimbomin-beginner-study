//
//  ProfileViewModel.swift
//  Moayo_kingchobo
//
//  Created by 김보민 on 10/28/26.
//

import Foundation
import Observation

@Observable
final class ProfileViewModel{
    private(set) var profiles: [ProfileModel] = [
        ProfileModel(
            username: "김보민",
            profileImageName: "Shung.png",
            age: 24,
            major: "컴퓨터과학전공",
            introduction: "오늘도 화이팅",
            isfollowed: false
        ),
        ProfileModel(
            username: "김땡땡",
            profileImageName: "dontworry",
            age: 22,
            major: "시각디자인학과",
            introduction: "다군만두고싶다",
            isfollowed: false
        ),
        ProfileModel(
            username: "모루카",
            profileImageName: "morucar",
            age: 3,
            major: "햄스터학과",
            introduction: "붕붕",
            isfollowed: false
        ),
        ProfileModel(
            username: "모아요",
            profileImageName: "profile",
            age: 21,
            major: "경영학과",
            introduction: "만나서 반갑소",
            isfollowed: false
        ),
        ProfileModel(
            username: "예예",
            profileImageName: "postImage1",
            age: 26,
            major: "수학과",
            introduction: "예?",
            isfollowed: false
        ),
        ProfileModel(
            username: "김윤아",
            profileImageName: "postImage2",
            age: 25,
            major: "실용음악과",
            introduction: "아집가고싶다",
            isfollowed: false
        ),
        ProfileModel(
            username: "치이카와",
            profileImageName: "IMG_1073",
            age: 4,
            major: "제초과",
            introduction: "열공중",
            isfollowed: false
        )
        
    ]
    
    func toggleFollow(id: ProfileModel.ID) {
        guard let index = profiles.firstIndex(where: { $0.id == id }) else {
            return
        }
        
        profiles[index].isfollowed.toggle()
    }
}
