//
//  ChoiceView.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/02.
//

import SwiftUI

struct ChoiceView: View {
    var body: some View {
        
        ZStack{
            
            Image("BG2")
                .ignoresSafeArea()
                .offset(y: -50)
            
            VStack(spacing: 200){
                Button {
                    
                } label: {
                    
                    NavigationLink(destination: LawnCameraView()) {
                        
                        Image("GoToLawnSoMac")
                        
                            .frame(width: 30)
                    }
                }
               
                Button {
                    
                } label: {
                    
                    NavigationLink(destination: MyCameraView()) {
                        
                        Image("GoToMySoMac")
                            .offset(y: -40)
                            .frame(width: 30)
                    }
                }
               
                
            }
        }
    }
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView()
    }
}
