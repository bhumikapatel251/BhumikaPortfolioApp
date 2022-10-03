//
//  ExprenceView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 03/10/22.
//

import SwiftUI

struct ExperienceView: View {
    
    var experience: Exprience
    
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
            }
        }
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView(experience: AppModel().portfollio.exprience[0])
    }
}
