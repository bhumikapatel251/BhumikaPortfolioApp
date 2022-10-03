//
//  AppModel.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 29/09/22.
//

import Foundation

class AppModel: ObservableObject {
    var portfollio: Portfolio = Portfolio(name: "Bhumika Patel", role: "iOS Developer", description: "Immensely passionate about iOS technologies", location: "Jahangirabad,Surat", skills: [
    Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
    Skill(id: UUID().uuidString, skillName: "swift 5.7", image: "swift"),
    Skill(id: UUID().uuidString, skillName: "Xcode 14.0.1", image: "Xcode")],
    experience: [
        Experience(id: UUID().uuidString, role: "6 month learning Phase")])
}
