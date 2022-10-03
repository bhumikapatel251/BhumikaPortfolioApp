//
//  ExperiencesView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 03/10/22.
//

import SwiftUI

struct ExperiencesView: View {
    
    var experiences: [Experience]
    @State var showExperience = true
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            HStack(spacing: 16){
                Text("Experience")
                    .font(.title3).bold()
                    .opacity(0.9)
                
                Button{
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperience.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperience ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom,14)
            if(showExperience){
                
                    ForEach(experiences) { experience in
                      ExperienceView(experience: experience)
                    
                }//.padding(.top,38)
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperiencesView(experiences: AppModel().portfollio.experience)
                .padding(24)
        }
      
    }
}
