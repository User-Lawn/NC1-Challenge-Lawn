//
//  CertificationView.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/02.
//

import SwiftUI

struct CertificationView: View {
    var body: some View {
        
        ZStack{
            Image("BG3").ignoresSafeArea()
            
            Image("Certification")
            
            Image("Wallet")
                .offset(y: 120)
            
        }
    }
}

struct CertificationView_Previews: PreviewProvider {
    static var previews: some View {
        CertificationView()
    }
}
