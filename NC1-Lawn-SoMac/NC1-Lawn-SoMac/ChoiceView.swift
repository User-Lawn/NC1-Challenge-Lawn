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
                
                Image("GoToLawnSoMac")
                
                Image("GoToMySoMac")
                
            }
        }
    }
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView()
    }
}
