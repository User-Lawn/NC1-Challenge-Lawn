//
//  HomeView.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/02.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       
        NavigationView{
            
            ZStack{
                
                Image("BG1").ignoresSafeArea()
                
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            
                            Button {
                                
                            } label: {
                                
                                NavigationLink(destination: CertificationView()) {
                                    
                                   Image(systemName:"person.text.rectangle")
                                        .frame(width: 30)
                                }
                            }
                        }
                    }.accentColor(.black)
                
                VStack{
                    
                    VStack(spacing: -10){
                       
                        Button {
                            
                        } label: {
                            
                            NavigationLink(destination: ChoiceView()) {
                                
                                Image("GoToSoMac")
                                
                                    .frame(width: 30)
                            }
                        }
                       
                        Image("GoToGallery")
                    }
                    
                    
                    Image("Mention")
                    
                    
                }.offset(y: 150)
            }
        }
        .navigationTitle("쏘맥")
        .navigationBarTitleDisplayMode(.inline)
        
      
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
