//
//  ExprenceView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 03/10/22.
//

import SwiftUI

struct ExperienceView: View {
    
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading,3)
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                }.padding(.leading,16)
            }.padding(.top,8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            ExperienceView(experience: AppModel().portfollio.experience[0])
                .padding(24)
        }
    }
}
