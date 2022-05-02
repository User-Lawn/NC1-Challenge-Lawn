//
//  HomeView.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/02.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            
            Image("BG1").ignoresSafeArea()
            
            VStack{
                
                VStack(spacing: -10){
                    
                    Image("GoToSoMac")
                    
                    Image("GoToGallery")
                }
                
                
                Image("Mention")
                
                
            }.offset(y: 200)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
