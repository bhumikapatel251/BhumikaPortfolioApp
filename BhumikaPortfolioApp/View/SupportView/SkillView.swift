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
        VStack{
            HStack(spacing: 10){
                Text("Skills")
                    .font(.title3).bold()
                    .opacity(0.9)
                
                Button{
                    showSkills.toggle()
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
           // LazyVGrid(columns: <#T##[GridItem]#>, content: <#T##() -> _#>)
        }
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skills: AppModel().portfollio.skills, width: 400)
    }
}
