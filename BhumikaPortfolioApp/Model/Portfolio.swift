//
//  Portfolio.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 29/09/22.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let role: String
    let companyName: String
    let duration: String
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experience: [Experience]
}
