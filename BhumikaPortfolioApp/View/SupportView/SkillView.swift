//
//  SkillView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 29/09/22.
//

import SwiftUI

struct SkillView: View {
    var skills: [Skill]
    var width: CGFloat
    @State var showSkills = true
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16){
                Text("Skills")
                    .font(.title3).bold()
                    .opacity(0.9)
                
                Button{
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
            if(showSkills){
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillsView(skill: skill, width: width / 3 - 15 )
                    }
                }.padding(.top,38)
            }
        }
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillView(skills: AppModel().portfollio.skills, width: 400)
                .padding(24)
        }
    }
}
