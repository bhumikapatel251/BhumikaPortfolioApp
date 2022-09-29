//
//  HeaderView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 29/09/22.
//

import SwiftUI

struct HeaderView: View {
    //MARK: Variable
    var appModel: AppModel
    //MARK: Views
    var body: some View {
        VStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 90, height: 90)
                .padding(5)
             .background(
                   Circle()
                .opacity(0.7)
                .shadow(radius: 5)
               )
            Text(appModel.portfollio.name)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top,8)
            
            Text(appModel.portfollio.role)
                .font(.callout)
                .opacity(0.85)
                .padding(.top, -2)
                
            HStack{
                Image(systemName: "location.fill")
                    .opacity(0.5)
                Text(appModel.portfollio.location)
                   // .opacity(0.85)
            }
            .padding(.top,10)
            .opacity(0.45)
            Text(appModel.portfollio.description)
                .opacity(0.7)
                .padding(.top,24)
              //  .lineSpacing(10)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
