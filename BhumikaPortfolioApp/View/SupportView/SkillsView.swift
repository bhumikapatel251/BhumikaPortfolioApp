//
//  SkillsView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 29/09/22.
//

import SwiftUI

struct SkillsView: View {
    //MARK: variable
    
    var skill: Skill
    var width: CGFloat = 120
    
    //MARK: views
    
    var body: some View {
        VStack{
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
            Text(skill.skillName)
                .font(.callout)
                .fontWeight(.semibold)
                .padding(.top, 10)
            
        }.padding()
            .frame(width: width, height: 109.7)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .opacity(0.075)
            )
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(skill: AppModel().portfollio.skills[0])
    }
}
