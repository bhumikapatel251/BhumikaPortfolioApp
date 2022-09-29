//
//  ContentView.swift
//  BhumikaPortfolioApp
//
//  Created by Bhumika Patel on 29/09/22.
//

import SwiftUI

struct PortfolioView: View {
    //MARK: Variable
    var appModel: AppModel = AppModel()
    //MARK: Views
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    HeaderView(appModel: appModel)
                }.padding(24)
            }
            
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
